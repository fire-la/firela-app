import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/services/auth_service.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/services/analytics_events.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/utils/logger.dart';
import '../../../expense/presentation/widgets/expense_entry_bottom_sheet.dart';
import '../../../expense/presentation/widgets/nlp_result_bottom_sheet.dart';
import '../../../review_center/presentation/signals/review_center_signal.dart';

/// Quick actions section with expense entry, bill import, and review buttons
class QuickActionsSection extends HookWidget {
  const QuickActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final nlpSessionId = useState<String>('');

    return Watch((context) {
      final pendingCounts = pendingCountByLevelSignal.value;
      final totalCount = pendingCounts['total'] ?? 0;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header
          Text(
            l10n.homeQuickActions,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),

          // Action buttons row
          Row(
            children: [
              // Add Expense button (primary action)
              Expanded(
                child: _QuickActionButton(
                  icon: Icons.add_circle_outline,
                  label: l10n.homeAddExpense,
                  onTap: () => _onAddExpenseTap(context, nlpSessionId),
                  isPrimary: true,
                ),
              ),
              const SizedBox(width: 12),
              // Bill Import button
              Expanded(
                child: _QuickActionButton(
                  icon: Icons.receipt_long_outlined,
                  label: l10n.homeBillImport,
                  onTap: () => context.push(RouteNames.billImport),
                ),
              ),
              // Review Pending button (only show if there are pending items)
              if (totalCount > 0) ...[
                const SizedBox(width: 12),
                Expanded(
                  child: _QuickActionButton(
                    icon: Icons.fact_check_outlined,
                    label: l10n.homeReviewPending,
                    badge: '$totalCount',
                    onTap: () => context.push(RouteNames.reviewCenter),
                  ),
                ),
              ],
            ],
          ),
        ],
      );
    });
  }

  /// Handle add expense button tap
  void _onAddExpenseTap(BuildContext context, ValueNotifier<String> nlpSessionId) {
    // Track expense button click
    AnalyticsService().capture(AnalyticsEvents.expenseButtonClicked);

    // Check login status
    if (!AuthManager.instance.isLoggedIn) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.pleaseLogin)),
      );
      Future.delayed(const Duration(milliseconds: 500), () {
        if (context.mounted) {
          AuthService.instance.showLoginOptions(context);
        }
      });
      return;
    }

    // Show expense entry bottom sheet
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => AnimatedPadding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(ctx).viewInsets.bottom,
        ),
        duration: const Duration(milliseconds: 100),
        child: ExpenseEntryBottomSheet(
          onSubmit: (text) {
            Navigator.of(context).pop();
            _handleNlpSubmit(context, text, nlpSessionId);
          },
          onBillImport: () {
            context.push(RouteNames.billImport);
          },
        ),
      ),
    );
  }

  /// Handle NLP submission
  Future<void> _handleNlpSubmit(
    BuildContext context,
    String text,
    ValueNotifier<String> nlpSessionId,
  ) async {
    logger.i('[QuickActionsSection] NLP submit: $text');

    // Show loading
    if (!context.mounted) return;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const Center(child: CircularProgressIndicator()),
    );

    try {
      final response = await IgnApiService.instance.processNlp(
        text,
        sessionId: nlpSessionId.value.isEmpty ? null : nlpSessionId.value,
      );

      // Update sessionId
      if (response['sessionId'] != null) {
        nlpSessionId.value = response['sessionId'];
      }

      if (!context.mounted) return;
      Navigator.pop(context); // Close loading

      final action = response['action'] as String? ?? '';
      final confidence = (response['confidence'] as num?)?.toDouble() ?? 0.0;

      logger.i('[QuickActionsSection] NLP response: action=$action, confidence=$confidence');

      switch (action) {
        case 'created':
          // High confidence (>=75%), direct success
          _showNlpResult(context, 'success', response, nlpSessionId);
          break;

        case 'confirm':
        case 'confirm_payee':
          // Low confidence (<75%) or payee not matched
          _showNlpResult(context, 'confirm', response, nlpSessionId,
            message: action == 'confirm_payee'
                ? (response['message'] ?? 'Payee not matched, please confirm transaction')
                : null);
          break;

        case 'confirm_duplicate':
          // Duplicate detected
          _showNlpResult(context, 'confirm', response, nlpSessionId,
            message: response['message'] ?? 'Duplicate transaction detected, please confirm');
          break;

        case 'ask':
          // Missing fields
          _showNlpResult(context, 'ask', response, nlpSessionId,
            message: response['message'],
            waitingFor: response['waitingFor']);
          break;

        case 'cancel':
          // User cancelled
          nlpSessionId.value = '';
          break;

        default:
          // Unknown response, show confirmation form
          _showNlpResult(context, 'confirm', response, nlpSessionId,
            message: response['message']);
      }
    } catch (e) {
      logger.e('[QuickActionsSection] NLP request failed: $e');

      if (context.mounted) {
        Navigator.pop(context); // Close loading

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Analysis failed, please retry'),
            duration: Duration(seconds: 3),
          ),
        );
      }
    }
  }

  /// Show NLP result bottom sheet
  void _showNlpResult(
    BuildContext context,
    String mode,
    Map<String, dynamic> response,
    ValueNotifier<String> nlpSessionId, {
    String? message,
    String? waitingFor,
  }) {
    final parsedData = response['parsedData'] as Map<String, dynamic>?
        ?? response['transaction'] as Map<String, dynamic>?
        ?? response['duplicateData']?['sourceTransaction'] as Map<String, dynamic>?
        ?? {};

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(ctx).viewInsets.bottom,
        ),
        child: NlpResultBottomSheet(
          mode: mode,
          parsedData: Map<String, dynamic>.from(parsedData),
          message: message,
          waitingFor: waitingFor,
          intent: response['intent'] ?? 'expense',
          onConfirm: (data) async {
            if (mode == 'success') {
              // Success mode, just complete
              nlpSessionId.value = '';
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(AppLocalizations.of(context)!.expenseEntrySuccess)),
                );
              }
            } else if (mode == 'ask' && data['_userInput'] != null) {
              // Ask mode: send user input (with sessionId for multi-turn)
              final userInput = data['_userInput'] as String;
              if (context.mounted) {
                await _handleNlpSubmit(context, userInput, nlpSessionId);
              }
            } else if (nlpSessionId.value.isNotEmpty) {
              // Has sessionId, confirm via multi-turn dialog
              if (context.mounted) {
                await _handleNlpSubmit(context, 'Confirm', nlpSessionId);
              }
            } else {
              // No sessionId, create transaction directly
              if (context.mounted) {
                await _createTransactionDirectly(context, Map<String, dynamic>.from(parsedData), nlpSessionId);
              }
            }
          },
          onCancel: () {
            // Clear session
            if (nlpSessionId.value.isNotEmpty) {
              IgnApiService.instance.clearNlpSession(nlpSessionId.value).catchError((_) {});
            }
            nlpSessionId.value = '';
          },
        ),
      ),
    );
  }

  /// Create transaction directly (fallback when no sessionId)
  Future<void> _createTransactionDirectly(
    BuildContext context,
    Map<String, dynamic> parsedData,
    ValueNotifier<String> nlpSessionId,
  ) async {
    logger.i('[QuickActionsSection] Creating transaction directly: $parsedData');

    final transaction = _convertToBeancountFormat(parsedData);

    if (!context.mounted) return;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const Center(child: CircularProgressIndicator()),
    );

    try {
      await IgnApiService.instance.createTransaction(transaction);
      nlpSessionId.value = '';

      if (context.mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.expenseEntrySuccess)),
        );
      }
    } catch (e) {
      logger.e('[QuickActionsSection] Failed to create transaction: $e');

      if (context.mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to save, please retry'), duration: Duration(seconds: 3)),
        );
      }
    }
  }

  /// Convert parsed data to Beancount format
  Map<String, dynamic> _convertToBeancountFormat(Map<String, dynamic> parsedData) {
    final amount = (parsedData['amount'] as num?)?.toDouble() ?? 0.0;
    final currency = parsedData['currency'] as String? ?? 'CNY';
    final date = parsedData['date'] as String?;
    final narration = parsedData['narration'] as String?;
    final payee = parsedData['payee'] as String?;
    final category = parsedData['category'] as String?;

    final expenseAccount = _mapCategoryToAccount(category);

    final postings = <Map<String, dynamic>>[
      {
        'account': expenseAccount,
        'units': amount.toString(),
        'currency': currency,
      },
      {
        'account': 'Assets:Unknown',
        'units': (-amount).toString(),
        'currency': currency,
      },
    ];

    return {
      if (date != null) 'date': date,
      if (narration != null) 'narration': narration,
      if (payee != null) 'payee': payee,
      'postings': postings,
    };
  }

  /// Map NLP category to Beancount account
  String _mapCategoryToAccount(String? category) {
    // Default to Uncategorized as per existing pattern
    return 'Expenses:Uncategorized';
  }
}

/// Quick action button widget
class _QuickActionButton extends StatelessWidget {
  const _QuickActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
    this.isPrimary = false,
    this.badge,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool isPrimary;
  final String? badge;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        decoration: BoxDecoration(
          color: isPrimary
              ? theme.colorScheme.primary
              : theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(12),
          border: isPrimary
              ? null
              : Border.all(
                  color: theme.colorScheme.outline.withValues(alpha: 0.2),
                ),
          boxShadow: isPrimary
              ? [
                  BoxShadow(
                    color: theme.colorScheme.primary.withValues(alpha: 0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ]
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(
                  icon,
                  size: 20,
                  color: isPrimary
                      ? theme.colorScheme.onPrimary
                      : theme.colorScheme.onSurface,
                ),
                if (badge != null)
                  Positioned(
                    right: -8,
                    top: -6,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.error,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        badge!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                label,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: isPrimary
                      ? theme.colorScheme.onPrimary
                      : theme.colorScheme.onSurface,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
