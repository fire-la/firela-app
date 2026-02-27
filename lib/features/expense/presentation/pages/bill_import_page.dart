import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:file_picker/file_picker.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/services/auth_service.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/services/analytics_events.dart';
import '../../../../core/utils/logger.dart';

/// Bill import page
class BillImportPage extends HookWidget {
  const BillImportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final selectedFile = useState<PlatformFile?>(null);
    final isParsing = useState(false);
    final parseProgress = useState(0.0);
    final importResult = useState<Map<String, dynamic>?>(null);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.billImportTitle),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),

            // Progress indicator
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  _StepIndicator(
                    step: 1,
                    label: l10n.importBill,
                    isActive: !isParsing.value,
                    isCompleted: selectedFile.value != null,
                  ),
                  Expanded(
                    child: Container(
                      height: 2,
                      color: selectedFile.value != null
                          ? const Color(0xFF000000)
                          : const Color(0xFFE0E0E0),
                    ),
                  ),
                  _StepIndicator(
                    step: 2,
                    label: l10n.parseBill,
                    isActive: isParsing.value,
                    isCompleted: importResult.value != null,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                l10n.pleaseImportAlipayBill,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // File upload area or selected file
            if (importResult.value != null)
              _buildImportResultArea(context, l10n, theme, importResult, selectedFile, isParsing)
            else if (isParsing.value)
              _buildParsingArea(context, l10n, theme, parseProgress, selectedFile)
            else if (selectedFile.value != null)
              _buildSelectedFileArea(context, l10n, theme, selectedFile)
            else
              _buildFileUploadArea(context, l10n, theme, selectedFile, isParsing, parseProgress, importResult),

            const SizedBox(height: 40),

            // How to get bill section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.howToGetBill,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildStepCard(context, theme, '支持 CSV、Excel (.xlsx, .xls) 格式的账单文件'),
                  const SizedBox(height: 8),
                  _buildStepCard(context, theme, '文件大小不超过 10MB'),
                  const SizedBox(height: 8),
                  _buildStepCard(context, theme, '账单需包含日期、金额等基本信息'),
                  const SizedBox(height: 8),
                  _buildStepCard(context, theme, '支持支付宝、微信、银行账单格式'),
                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildFileUploadArea(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    ValueNotifier<PlatformFile?> selectedFile,
    ValueNotifier<bool> isParsing,
    ValueNotifier<double> parseProgress,
    ValueNotifier<Map<String, dynamic>?> importResult,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: () async {
          // 检查登录
          if (!AuthManager.instance.isLoggedIn) {
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('请先登录')),
              );
              await AuthService.instance.showLoginOptions(context);
            }
            return;
          }

          final result = await FilePicker.platform.pickFiles(
            type: FileType.custom,
            allowedExtensions: ['xlsx', 'xls', 'csv'],
          );

          if (result != null && result.files.single.path != null && context.mounted) {
            selectedFile.value = result.files.single;
            // Track file selected
            await AnalyticsService().trackBillImport(
              eventType: AnalyticsEvents.billFileSelected,
              fileType: result.files.single.extension ?? 'unknown',
              fileSize: result.files.single.size,
            );
            // 开始上传导入
            await _startImport(
              context,
              result.files.single.path!,
              isParsing,
              parseProgress,
              importResult,
            );
          }
        },
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: theme.colorScheme.outline.withValues(alpha: 0.2),
              style: BorderStyle.solid,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.insert_drive_file_outlined,
                size: 48,
                color: theme.colorScheme.outline,
              ),
              const SizedBox(height: 16),
              Text(
                l10n.addFile,
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                l10n.supportedFormats,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSelectedFileArea(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    ValueNotifier<PlatformFile?> selectedFile,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(
              Icons.insert_drive_file,
              size: 32,
              color: theme.colorScheme.onSurface,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                selectedFile.value?.name ?? '',
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildParsingArea(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    ValueNotifier<double> parseProgress,
    ValueNotifier<PlatformFile?> selectedFile,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.insert_drive_file,
                  size: 32,
                  color: theme.colorScheme.onSurface,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    selectedFile.value?.name ?? '正在导入...',
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          LinearPercentIndicator(
            padding: EdgeInsets.zero,
            lineHeight: 6,
            percent: parseProgress.value.clamp(0.0, 1.0),
            progressColor: const Color(0xFF000000),
            backgroundColor: const Color(0xFFE0E0E0),
            barRadius: const Radius.circular(3),
            animation: true,
            animationDuration: 300,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                l10n.parsingBill,
                style: theme.textTheme.bodyMedium,
              ),
              Text(
                '${(parseProgress.value * 100).toInt()}%',
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildImportResultArea(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    ValueNotifier<Map<String, dynamic>?> importResult,
    ValueNotifier<PlatformFile?> selectedFile,
    ValueNotifier<bool> isParsing,
  ) {
    final result = importResult.value!;
    final imported = result['imported'] ?? 0;
    final failed = result['failed'] ?? 0;
    final skipped = result['skipped'] ?? 0;
    final isSuccess = imported > 0;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: isSuccess
                  ? Colors.green.withValues(alpha: 0.1)
                  : Colors.red.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Icon(
                  isSuccess ? Icons.check_circle : Icons.error_outline,
                  size: 48,
                  color: isSuccess ? Colors.green : Colors.red,
                ),
                const SizedBox(height: 12),
                Text(
                  isSuccess ? '导入成功' : '导入失败',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: isSuccess ? Colors.green[700] : Colors.red[700],
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStatItem(theme, '$imported', '成功导入', Colors.green),
                    if (skipped > 0)
                      _buildStatItem(theme, '$skipped', '跳过(重复)', Colors.orange),
                    if (failed > 0)
                      _buildStatItem(theme, '$failed', '失败', Colors.red),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    selectedFile.value = null;
                    isParsing.value = false;
                    importResult.value = null;
                  },
                  child: const Text('继续导入'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('完成'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(ThemeData theme, String value, String label, Color color) {
    return Column(
      children: [
        Text(
          value,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: color,
          ),
        ),
      ],
    );
  }

  Widget _buildStepCard(BuildContext context, ThemeData theme, String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(Icons.info_outline, size: 16, color: theme.colorScheme.outline),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// 开始导入文件
  Future<void> _startImport(
    BuildContext context,
    String filePath,
    ValueNotifier<bool> isParsing,
    ValueNotifier<double> parseProgress,
    ValueNotifier<Map<String, dynamic>?> importResult,
  ) async {
    isParsing.value = true;
    parseProgress.value = 0.1;

    // Track import started
    await AnalyticsService().trackBillImport(
      eventType: AnalyticsEvents.billImportStarted,
    );

    try {
      // 模拟进度（实际上传是一次性的）
      parseProgress.value = 0.3;
      await Future.delayed(const Duration(milliseconds: 200));

      parseProgress.value = 0.6;
      final result = await IgnApiService.instance.importBillFile(filePath);

      parseProgress.value = 1.0;
      await Future.delayed(const Duration(milliseconds: 300));

      isParsing.value = false;
      importResult.value = result;

      logger.i('[BillImport] 导入结果: $result');

      // Track import success
      final imported = result['imported'] ?? 0;
      await AnalyticsService().trackBillImport(
        eventType: AnalyticsEvents.billImportSuccess,
        recordCount: imported,
        success: true,
      );
    } catch (e) {
      isParsing.value = false;
      parseProgress.value = 0.0;

      logger.e('[BillImport] 导入失败: $e');

      // Track import failure
      await AnalyticsService().trackBillImport(
        eventType: AnalyticsEvents.billImportFailed,
        errorMessage: e.toString(),
        success: false,
      );

      if (context.mounted) {
        String errorMsg = '导入失败，请重试';
        if (e.toString().contains('413')) {
          errorMsg = '文件过大，请选择小于50MB的文件';
        } else if (e.toString().contains('429')) {
          errorMsg = '请等待当前导入完成后再试';
        } else if (e.toString().contains('400')) {
          errorMsg = '文件格式不支持';
        }

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(errorMsg)),
        );
      }
    }
  }
}

/// Step indicator widget
class _StepIndicator extends StatelessWidget {
  const _StepIndicator({
    required this.step,
    required this.label,
    required this.isActive,
    required this.isCompleted,
  });

  final int step;
  final String label;
  final bool isActive;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: isActive || isCompleted
                ? const Color(0xFF000000)
                : const Color(0xFFE0E0E0),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: isCompleted
                ? const Icon(
                    Icons.check,
                    color: Color(0xFFFFFFFF),
                    size: 20,
                  )
                : Text(
                    step.toString(),
                    style: TextStyle(
                      color: isActive || isCompleted
                          ? const Color(0xFFFFFFFF)
                          : theme.colorScheme.outline,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: isActive || isCompleted
                ? theme.colorScheme.onSurface
                : theme.colorScheme.outline,
            fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
