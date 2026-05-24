import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/utils/logger.dart';

class RecurringSetupState {
  final TextEditingController amountController;
  final int selectedSegment;
  final ValueChanged<int> onSegmentChanged;
  final String startDate;
  final ValueChanged<String> onStartDateChanged;
  final int frequencyIndex;
  final ValueChanged<int> onFrequencyChanged;
  final int endTypeIndex;
  final ValueChanged<int> onEndTypeChanged;
  final String categoryName;
  final IconData categoryIcon;
  final bool isSubmitting;
  final Future<bool> Function() createRule;

  const RecurringSetupState({
    required this.amountController,
    required this.selectedSegment,
    required this.onSegmentChanged,
    required this.startDate,
    required this.onStartDateChanged,
    required this.frequencyIndex,
    required this.onFrequencyChanged,
    required this.endTypeIndex,
    required this.onEndTypeChanged,
    required this.categoryName,
    required this.categoryIcon,
    required this.isSubmitting,
    required this.createRule,
  });
}

RecurringSetupState useRecurringSetup({String? transactionId}) {
  final amountController = useTextEditingController();
  final selectedSegment = useState<int>(1);
  final startDate = useState<String>(_today());
  final frequencyIndex = useState<int>(2); // default Monthly
  final endTypeIndex = useState<int>(0); // default Never
  final categoryName = useState<String>('Rent');
  final categoryIcon = useState<IconData>(Icons.home_outlined);
  final isSubmitting = useState<bool>(false);

  final frequencies = ['DAILY', 'WEEKLY', 'MONTHLY', 'QUARTERLY', 'YEARLY', 'CUSTOM'];

  Future<bool> createRule() async {
    isSubmitting.value = true;
    try {
      await IgnApiService.instance.createRecurringRule({
        'name': categoryName.value,
        'frequency': frequencies[frequencyIndex.value],
        'expectedAmount': double.tryParse(amountController.text) ?? 0,
        'currency': 'CNY',
        'startDate': startDate.value,
        'isActive': true,
        'autoCreate': false,
      });
      return true;
    } catch (e) {
      logger.e('[RecurringSetup] create failed: $e');
      return false;
    } finally {
      isSubmitting.value = false;
    }
  }

  return RecurringSetupState(
    amountController: amountController,
    selectedSegment: selectedSegment.value,
    onSegmentChanged: (v) => selectedSegment.value = v,
    startDate: startDate.value,
    onStartDateChanged: (v) => startDate.value = v,
    frequencyIndex: frequencyIndex.value,
    onFrequencyChanged: (v) => frequencyIndex.value = v,
    endTypeIndex: endTypeIndex.value,
    onEndTypeChanged: (v) => endTypeIndex.value = v,
    categoryName: categoryName.value,
    categoryIcon: categoryIcon.value,
    isSubmitting: isSubmitting.value,
    createRule: createRule,
  );
}

String _today() {
  final now = DateTime.now();
  return '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
}
