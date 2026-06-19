import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/components/components.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/utils/logger.dart';

class RecurringTransactionDialogPage extends HookWidget {
  const RecurringTransactionDialogPage({
    super.key,
    required this.transactionId,
    this.matchedDate = '',
    this.amount = '',
  });

  final String transactionId;
  final String matchedDate;
  final String amount;

  @override
  Widget build(BuildContext context) {
    final isSubmitting = useState(false);

    return Scaffold(
      body: Column(
        children: [
          TopBar(title: 'Recurring Transaction'),
          Expanded(
            child: Center(
              child: DialogOverlay(
                title: 'Set as recurring transaction?',
                subtitle: matchedDate.isNotEmpty
                    ? 'Found a same-amount transaction on $matchedDate'
                    : 'This transaction appears to repeat',
                primaryLabel:
                    isSubmitting.value ? 'Setting...' : 'Set Recurring',
                primaryOnTap: isSubmitting.value
                    ? null
                    : () async {
                        isSubmitting.value = true;
                        try {
                          await IgnApiService.instance
                              .createRecurringRuleFromTransaction(
                                  transactionId);
                          if (context.mounted) {
                            context.push(
                                '${RouteNames.recurringSetup}?transactionId=$transactionId');
                          }
                        } catch (e) {
                          logger.e('[RecurringDialog] create failed: $e');
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('创建失败: $e')),
                            );
                          }
                        } finally {
                          isSubmitting.value = false;
                        }
                      },
                secondaryLabel: 'Skip',
                secondaryOnTap: () => context.pop(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
