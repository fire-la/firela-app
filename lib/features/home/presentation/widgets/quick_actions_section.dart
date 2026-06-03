import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/services/receipt_text_parser.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/services/auth_service.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/services/analytics_events.dart';
import '../../../../core/services/document_scanner_service.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/network/api_client.dart';
import '../../../../core/services/ocr/ocr_engine_factory.dart';
import '../../../../core/services/ocr/ocr_pipeline.dart';
import '../../../../core/utils/logger.dart';
import '../../../expense/presentation/widgets/expense_entry_bottom_sheet.dart';
import '../../../expense/presentation/widgets/nlp_result_bottom_sheet.dart';
import '../../../expense/presentation/widgets/categorization_preview_sheet.dart';
import '../../../expense/presentation/widgets/ocr_result_debug_sheet.dart';
import '../../../review_center/presentation/signals/review_center_signal.dart';
import '../../../../shared/signals/asset_refresh_signal.dart';

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
            style: TokenTypography.h4(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: TokenSpacing.lg),

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
              const SizedBox(width: TokenSpacing.lg),
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
                const SizedBox(width: TokenSpacing.lg),
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
          onPhotoRecognition: () {
            Navigator.of(context).pop();
            _showImageSourceAndProcessOcr(context, nlpSessionId);
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

        String errorMsg = '分析失败，请重试';
        if (e is ApiException) {
          if (e.statusCode == 500) {
            errorMsg = '服务暂时不可用，请稍后重试';
          } else if (e.statusCode == 422) {
            errorMsg = '分类未识别，请尝试更具体的描述方式';
          } else if (e.statusCode == 400) {
            errorMsg = '输入信息有误';
          }
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(errorMsg),
            duration: const Duration(seconds: 3),
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
              refreshAssetData();
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
      refreshAssetData();

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

  /// Show image source picker and process OCR
  void _showImageSourceAndProcessOcr(BuildContext context, ValueNotifier<String> nlpSessionId) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('拍照'),
              onTap: () {
                Navigator.pop(ctx);
                _processLocalOcr(context, ImageSource.camera, nlpSessionId);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('从相册选择'),
              onTap: () {
                Navigator.pop(ctx);
                _processLocalOcr(context, ImageSource.gallery, nlpSessionId);
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Local OCR processing: pick image → OCR pipeline → show result
  Future<void> _processLocalOcr(
    BuildContext context,
    ImageSource source,
    ValueNotifier<String> nlpSessionId,
  ) async {
    String? imagePath;

    if (source == ImageSource.camera) {
      // Use document scanner for camera source
      imagePath = await DocumentScannerService.instance.scanDocument();
    } else {
      final picker = ImagePicker();
      final image = await picker.pickImage(
        source: source,
        maxWidth: 1920,
        maxHeight: 1080,
        imageQuality: 85,
      );
      imagePath = image?.path;
    }

    if (imagePath == null) return;
    if (!context.mounted) return;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const Center(child: CircularProgressIndicator()),
    );

    try {
      final engine = OcrEngineFactory.create();
      final pipeline = OcrPipeline();
      final result = await pipeline.process(engine, imagePath);

      final receipt = result.receipt;

      logger.i('[OCR] Parsed: merchant="${receipt.merchant}", '
          'amount=${receipt.totalAmount}, confidence=${receipt.confidence.toStringAsFixed(1)}%');

      if (!context.mounted) return;
      Navigator.pop(context); // close loading

      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        enableDrag: false,
        backgroundColor: Colors.transparent,
        builder: (_) => OcrResultDebugSheet(
          receipt: receipt,
          ocrSource: result.engineName,
          processingTime: result.processingTime,
          reconstructedLines: result.reconstructedLines,
          onConfirm: receipt.isValid
              ? (OcrConfirmResult confirmResult) {
                  _confirmOcrReceipt(context, receipt, confirmResult, result.engineName);
                }
              : null,
        ),
      );
    } catch (e) {
      logger.e('[OCR] Local OCR failed: $e');
      if (context.mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('本地识别失败: $e')),
        );
      }
    }
  }

  /// Confirm OCR receipt: convert to CategorizationItem → show preview → upload
  Future<void> _confirmOcrReceipt(
    BuildContext context,
    dynamic receipt,
    OcrConfirmResult confirmResult,
    String engineName,
  ) async {
    final now = DateTime.now().millisecondsSinceEpoch;
    final items = <CategorizationItem>[];

    if (confirmResult.mode == TransactionMode.single) {
      // Single mode: one transaction for the whole receipt
      // Use line items total (user-edited) rather than regex-parsed total
      final merchantName = confirmResult.merchant.isNotEmpty
          ? confirmResult.merchant
          : (receipt.merchant.isNotEmpty ? receipt.merchant : '未知商家');
      items.add(CategorizationItem(
        id: 'ocr-$now',
        merchant: merchantName,
        amount: confirmResult.totalAmount > 0 ? confirmResult.totalAmount : receipt.totalAmount,
        date: confirmResult.selectedDate,
        suggestedCategory: '其他',
        confidence: receipt.confidence,
        selectedCategory: '其他',
      ));
    } else {
      // Multiple mode: one transaction per edited line item
      for (int i = 0; i < confirmResult.editedLineItems.length; i++) {
        final lineItem = confirmResult.editedLineItems[i];
        items.add(CategorizationItem(
          id: 'ocr-${now}_$i',
          merchant: lineItem.name.isNotEmpty ? lineItem.name : '商品',
          amount: lineItem.totalPrice,
          date: confirmResult.selectedDate,
          suggestedCategory: '其他',
          confidence: receipt.confidence,
          selectedCategory: '其他',
        ));
      }
    }

    final availableCategories = ['餐饮', '交通', '购物', '娱乐', '医疗', '教育', '居住', '通讯', '其他'];

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => CategorizationPreviewSheet(
        items: items,
        availableCategories: availableCategories,
        onConfirm: () async {
          Navigator.pop(ctx); // close preview sheet

          // Build transactions based on mode
          final transactions = _buildOcrTransactions(
            items, receipt, confirmResult, engineName,
          );

          // Show loading
          if (!context.mounted) return;
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => const Center(child: CircularProgressIndicator()),
          );

          try {
            final result = await IgnApiService.instance.uploadParsedTransactions(transactions);
            if (!context.mounted) return;
            Navigator.pop(context); // close loading

            final imported = result['imported'] as int? ?? 0;
            if (imported > 0) {
              // Refresh review center count and asset data
              fetchPendingCount();
              refreshAssetData();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(AppLocalizations.of(context)!.expenseEntrySuccess)),
              );
            } else {
              final errors = result['errors'] as List? ?? [];
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(errors.isNotEmpty ? '导入失败: ${errors.first}' : '导入失败，请重试'),
                  duration: const Duration(seconds: 3),
                ),
              );
            }
          } catch (e) {
            logger.e('[QuickActionsSection] OCR upload failed: $e');
            if (context.mounted) {
              Navigator.pop(context); // close loading
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('提交失败: $e'), duration: const Duration(seconds: 3)),
              );
            }
          }
        },
        onCancel: () {
          Navigator.pop(ctx);
        },
      ),
    );
  }

  /// Build Beancount transactions from OCR receipt based on mode
  List<Map<String, dynamic>> _buildOcrTransactions(
    List<CategorizationItem> items,
    dynamic receipt,
    OcrConfirmResult confirmResult,
    String engineName,
  ) {
    final lineItemsMeta = confirmResult.editedLineItems.map((i) => {
      'name': i.name,
      'quantity': i.quantity,
      'totalPrice': i.totalPrice,
    }).toList();

    return items.map((item) {
      return {
        'date': '${item.date.year}-${item.date.month.toString().padLeft(2, '0')}-${item.date.day.toString().padLeft(2, '0')}',
        'narration': item.merchant,
        'payee': item.merchant,
        'postings': [
          {
            'account': 'Expenses:Uncategorized',
            'units': item.amount.toStringAsFixed(2),
            'currency': 'CNY',
          },
          {
            'account': 'Assets:Unknown',
            'units': (-item.amount).toStringAsFixed(2),
            'currency': 'CNY',
          },
        ],
        'meta': {
          'source': 'ocr-receipt',
          'confidence': receipt.confidence,
          'ocrEngine': engineName,
          'mode': confirmResult.mode == TransactionMode.single ? 'single' : 'multiple',
          if (confirmResult.mode == TransactionMode.single && lineItemsMeta.isNotEmpty)
            'lineItems': lineItemsMeta,
        },
        'idempotencyKey': item.id,
        'autoCreateAccounts': true,
      };
    }).toList();
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
        padding: const EdgeInsets.symmetric(vertical: TokenSpacing.lg, horizontal: TokenSpacing.lg),
        decoration: BoxDecoration(
          color: isPrimary
              ? TokenColors.textAccent
              : theme.colorScheme.surfaceContainerHighest,
          borderRadius: TokenRadius.borderMd,
          border: isPrimary
              ? null
              : Border.all(
                  color: TokenColors.textTertiary.withValues(alpha: 0.2),
                ),
          boxShadow: isPrimary
              ? [
                  BoxShadow(
                    color: TokenColors.textAccent.withValues(alpha: 0.3),
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
                      ? TokenColors.white
                      : theme.colorScheme.onSurface,
                ),
                if (badge != null)
                  Positioned(
                    right: -8,
                    top: -6,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xs, vertical: 1),
                      decoration: BoxDecoration(
                        color: TokenColors.error,
                        borderRadius: TokenRadius.borderSm,
                      ),
                      child: Text(
                        badge!,
                        style: TokenTypography.micro(
                          color: TokenColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(width: TokenSpacing.sm),
            Flexible(
              child: Text(
                label,
                style: TokenTypography.caption(
                  color: isPrimary
                      ? TokenColors.white
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
