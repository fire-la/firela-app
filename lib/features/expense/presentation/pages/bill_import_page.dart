import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/services/auth_service.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/services/analytics_events.dart';
import '../../../../core/utils/logger.dart';
import '../widgets/categorization_preview_sheet.dart';
import '../widgets/import_error_display.dart';
import '../widgets/import_progress_indicator.dart';

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
    final categorizationItems = useState<List<CategorizationItem>>([]);
    final editedCount = useState(0);
    final importSource = useState<String>('file'); // 'file' or 'ocr'
    final currentStep = useState<ImportStep>(ImportStep.idle);
    final errorMessage = useState<String?>(null);
    final errorDetails = useState<String?>(null);
    final lastImportPath = useState<String?>(null);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.billImportTitle),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),

            // Stepped progress indicator
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ImportProgressIndicator(
                currentStep: currentStep.value,
                progress: parseProgress.value,
                itemCount: categorizationItems.value.isNotEmpty
                    ? categorizationItems.value.length
                    : null,
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
            if (errorMessage.value != null)
              _buildErrorArea(
                context,
                l10n,
                theme,
                errorMessage,
                errorDetails,
                lastImportPath,
                isParsing,
                parseProgress,
                importResult,
                categorizationItems,
                editedCount,
                importSource,
                currentStep,
                selectedFile,
              )
            else if (importResult.value != null)
              _buildImportResultArea(context, l10n, theme, importResult, selectedFile, isParsing, currentStep)
            else if (isParsing.value)
              _buildParsingArea(context, l10n, theme, parseProgress, selectedFile, currentStep)
            else if (selectedFile.value != null)
              _buildSelectedFileArea(context, l10n, theme, selectedFile)
            else
              _buildFileUploadArea(context, l10n, theme, selectedFile, isParsing, parseProgress, importResult, categorizationItems, editedCount, importSource, currentStep),

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
    ValueNotifier<List<CategorizationItem>> categorizationItems,
    ValueNotifier<int> editedCount,
    ValueNotifier<String> importSource,
    ValueNotifier<ImportStep> currentStep,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          // Scan Receipt Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () => _showImageSourceDialog(
                context,
                l10n,
                theme,
                isParsing,
                parseProgress,
                importResult,
                categorizationItems,
                editedCount,
                importSource,
                currentStep,
              ),
              icon: const Icon(Icons.camera_alt_outlined),
              label: Text(l10n.scanReceipt),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Divider
          Row(
            children: [
              Expanded(child: Divider(color: theme.colorScheme.outline.withValues(alpha: 0.3))),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'OR',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
              ),
              Expanded(child: Divider(color: theme.colorScheme.outline.withValues(alpha: 0.3))),
            ],
          ),

          const SizedBox(height: 16),

          // File Upload Area
          InkWell(
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
                // 开始上传导入 - note: these parameters will be added in a separate update
                if (context.mounted) {
                  // Create temporary notifiers for error handling within this context
                  final lastImportPath = useState<String?>(null);
                  final errorMessage = useState<String?>(null);
                  final errorDetails = useState<String?>(null);

                  await _startImport(
                    context,
                    result.files.single.path!,
                    isParsing,
                    parseProgress,
                    importResult,
                    categorizationItems,
                    editedCount,
                    importSource,
                    currentStep,
                    lastImportPath,
                    errorMessage,
                    errorDetails,
                  );

                  // If there was an error, show it
                  if (errorMessage.value != null && context.mounted) {
                    _showErrorDialog(context, l10n, errorMessage.value!, errorDetails.value);
                  }
                }
              }
            },
            child: Container(
              height: 160,
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
        ],
      ),
    );
  }

  /// Show error dialog using ImportErrorDisplay
  void _showErrorDialog(
    BuildContext context,
    AppLocalizations l10n,
    String errorMessage,
    String? errorDetails,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: const EdgeInsets.all(16),
        content: ImportErrorDisplay(
          errorMessage: errorMessage,
          technicalDetails: errorDetails,
          onDismiss: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  /// Show dialog to choose image source (camera or gallery)
  void _showImageSourceDialog(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    ValueNotifier<bool> isParsing,
    ValueNotifier<double> parseProgress,
    ValueNotifier<Map<String, dynamic>?> importResult,
    ValueNotifier<List<CategorizationItem>> categorizationItems,
    ValueNotifier<int> editedCount,
    ValueNotifier<String> importSource,
    ValueNotifier<ImportStep> currentStep,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: Text(l10n.takePhoto),
              onTap: () {
                Navigator.pop(context);
                _processOcrImage(
                  context,
                  ImageSource.camera,
                  isParsing,
                  parseProgress,
                  importResult,
                  l10n,
                  categorizationItems,
                  editedCount,
                  importSource,
                  currentStep,
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: Text(l10n.chooseFromGallery),
              onTap: () {
                Navigator.pop(context);
                _processOcrImage(
                  context,
                  ImageSource.gallery,
                  isParsing,
                  parseProgress,
                  importResult,
                  l10n,
                  categorizationItems,
                  editedCount,
                  importSource,
                  currentStep,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Process OCR image from camera or gallery
  Future<void> _processOcrImage(
    BuildContext context,
    ImageSource source,
    ValueNotifier<bool> isParsing,
    ValueNotifier<double> parseProgress,
    ValueNotifier<Map<String, dynamic>?> importResult,
    AppLocalizations l10n,
    ValueNotifier<List<CategorizationItem>> categorizationItems,
    ValueNotifier<int> editedCount,
    ValueNotifier<String> importSource,
    ValueNotifier<ImportStep> currentStep,
  ) async {
    // Check login
    if (!AuthManager.instance.isLoggedIn) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('请先登录')),
        );
        await AuthService.instance.showLoginOptions(context);
      }
      return;
    }

    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(
      source: source,
      maxWidth: 1920,
      maxHeight: 1080,
      imageQuality: 85,
    );

    if (image == null) return;

    // Track image selected
    await AnalyticsService().trackOcr(
      eventType: AnalyticsEvents.ocrImageSelected,
      imageSource: source == ImageSource.camera ? 'camera' : 'gallery',
    );

    isParsing.value = true;
    currentStep.value = ImportStep.uploading;
    parseProgress.value = 0.1;

    // Track OCR started
    await AnalyticsService().trackOcr(
      eventType: AnalyticsEvents.ocrProcessingStarted,
    );

    try {
      parseProgress.value = 0.3;
      currentStep.value = ImportStep.parsing;
      await Future.delayed(const Duration(milliseconds: 200));

      parseProgress.value = 0.6;
      currentStep.value = ImportStep.categorizing;
      final result = await IgnApiService.instance.ocrReceiptImage(image.path);

      parseProgress.value = 1.0;
      currentStep.value = ImportStep.reviewing;
      await Future.delayed(const Duration(milliseconds: 300));

      isParsing.value = false;

      logger.i('[OCR] 识别结果: $result');

      // Track OCR success
      final success = result['success'] ?? false;
      final data = result['data'] as Map<String, dynamic>?;
      await AnalyticsService().trackOcr(
        eventType: success
            ? AnalyticsEvents.ocrProcessingSuccess
            : AnalyticsEvents.ocrProcessingFailed,
        confidence: data?['confidence']?.toDouble(),
        merchant: data?['merchant'],
        success: success,
      );

      if (context.mounted) {
        if (success && data != null) {
          // Create categorization item from OCR result
          final item = CategorizationItem(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            merchant: data['merchant'] ?? '',
            amount: (data['amount'] ?? 0).toDouble(),
            date: DateTime.now(),
            suggestedCategory: data['category'] ?? '其他',
            confidence: (data['confidence'] ?? 0).toDouble(),
            selectedCategory: data['category'] ?? '其他',
          );

          categorizationItems.value = [item];
          importSource.value = 'ocr';

          final theme = Theme.of(context);
          _showCategorizationPreview(
            context,
            l10n,
            theme,
            [item],
            categorizationItems,
            editedCount,
            importSource,
          );
        } else {
          currentStep.value = ImportStep.error;
          final errorMsg = result['error'] ?? '识别失败，请重试';
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(errorMsg)),
          );
        }
      }
    } catch (e) {
      isParsing.value = false;
      parseProgress.value = 0.0;
      currentStep.value = ImportStep.error;

      logger.e('[OCR] 识别失败: $e');

      // Track OCR failure
      await AnalyticsService().trackOcr(
        eventType: AnalyticsEvents.ocrProcessingFailed,
        errorMessage: e.toString(),
        success: false,
      );

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('识别失败: $e')),
        );
      }
    }
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

  Widget _buildErrorArea(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    ValueNotifier<String?> errorMessage,
    ValueNotifier<String?> errorDetails,
    ValueNotifier<String?> lastImportPath,
    ValueNotifier<bool> isParsing,
    ValueNotifier<double> parseProgress,
    ValueNotifier<Map<String, dynamic>?> importResult,
    ValueNotifier<List<CategorizationItem>> categorizationItems,
    ValueNotifier<int> editedCount,
    ValueNotifier<String> importSource,
    ValueNotifier<ImportStep> currentStep,
    ValueNotifier<PlatformFile?> selectedFile,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ImportErrorDisplay(
            errorMessage: errorMessage.value ?? 'Unknown error',
            technicalDetails: errorDetails.value,
            onRetry: lastImportPath.value != null
                ? () {
                    errorMessage.value = null;
                    errorDetails.value = null;
                    _startImport(
                      context,
                      lastImportPath.value!,
                      isParsing,
                      parseProgress,
                      importResult,
                      categorizationItems,
                      editedCount,
                      importSource,
                      currentStep,
                      lastImportPath,
                      errorMessage,
                      errorDetails,
                    );
                  }
                : null,
            onDismiss: () {
              errorMessage.value = null;
              errorDetails.value = null;
              currentStep.value = ImportStep.idle;
              selectedFile.value = null;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildParsingArea(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    ValueNotifier<double> parseProgress,
    ValueNotifier<PlatformFile?> selectedFile,
    ValueNotifier<ImportStep> currentStep,
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
                const SizedBox(
                  width: 32,
                  height: 32,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    selectedFile.value?.name ?? l10n.parsingBill,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Text(
            l10n.parsingBill,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.outline,
            ),
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
    ValueNotifier<ImportStep> currentStep,
  ) {
    final result = importResult.value!;
    final imported = result['imported'] ?? 0;
    final failed = result['failed'] ?? 0;
    final skipped = result['skipped'] ?? 0;
    final isSuccess = imported > 0;

    // Set current step based on result
    if (isSuccess) {
      currentStep.value = ImportStep.complete;
    } else {
      currentStep.value = ImportStep.error;
    }

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
                    currentStep.value = ImportStep.idle;
                  },
                  child: Text(l10n.batchImportContinueImport),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(l10n.batchImportDone),
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

  /// Show categorization preview bottom sheet
  void _showCategorizationPreview(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    List<CategorizationItem> items,
    ValueNotifier<List<CategorizationItem>> categorizationItems,
    ValueNotifier<int> editedCount,
    ValueNotifier<String> importSource,
  ) {
    // Track preview shown
    AnalyticsService().trackCategorization(
      eventType: AnalyticsEvents.categorizationPreviewShown,
      itemCount: items.length,
      avgConfidence: items.isEmpty
          ? 0
          : items.map((e) => e.confidence).reduce((a, b) => a + b) / items.length,
      source: importSource.value,
    );

    // Default categories (in production, these would come from beancount config)
    final defaultCategories = [
      '餐饮', '交通', '购物', '娱乐', '医疗', '教育', '居住', '通讯', '其他'
    ];

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: false,
      builder: (context) => CategorizationPreviewSheet(
        items: items,
        availableCategories: defaultCategories,
        onConfirm: () {
          Navigator.pop(context);
          _confirmCategorization(
            context,
            l10n,
            theme,
            categorizationItems,
            editedCount,
            importSource,
          );
        },
        onCancel: () {
          Navigator.pop(context);
          AnalyticsService().trackCategorization(
            eventType: AnalyticsEvents.categorizationCancelled,
            itemCount: items.length,
            source: importSource.value,
          );
        },
        onCategoryChanged: (index, newCategory) {
          AnalyticsService().trackCategorization(
            eventType: AnalyticsEvents.categorizationItemEdited,
            itemCount: items.length,
            source: importSource.value,
          );
        },
      ),
    );
  }

  /// Confirm categorization and submit to backend
  Future<void> _confirmCategorization(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    ValueNotifier<List<CategorizationItem>> categorizationItems,
    ValueNotifier<int> editedCount,
    ValueNotifier<String> importSource,
  ) async {
    final items = categorizationItems.value;
    final edits = items.where((e) => e.selectedCategory != e.suggestedCategory).length;

    // Track confirmation
    await AnalyticsService().trackCategorization(
      eventType: AnalyticsEvents.categorizationConfirmed,
      itemCount: items.length,
      editedCount: edits,
      avgConfidence: items.isEmpty
          ? 0
          : items.map((e) => e.confidence).reduce((a, b) => a + b) / items.length,
      source: importSource.value,
    );

    // TODO: Submit categorized items to backend for beancount import
    // For now, show success and navigate back
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('已导入 ${items.length} 笔记账')),
      );
      Navigator.pop(context);
    }
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
    ValueNotifier<List<CategorizationItem>> categorizationItems,
    ValueNotifier<int> editedCount,
    ValueNotifier<String> importSource,
    ValueNotifier<ImportStep> currentStep,
    ValueNotifier<String?> lastImportPath,
    ValueNotifier<String?> errorMessage,
    ValueNotifier<String?> errorDetails,
  ) async {
    isParsing.value = true;
    currentStep.value = ImportStep.uploading;
    parseProgress.value = 0.1;
    lastImportPath.value = filePath;
    errorMessage.value = null;
    errorDetails.value = null;

    // Track import started
    await AnalyticsService().trackBillImport(
      eventType: AnalyticsEvents.billImportStarted,
    );

    try {
      // 模拟进度（实际上传是一次性的）
      parseProgress.value = 0.3;
      currentStep.value = ImportStep.parsing;
      await Future.delayed(const Duration(milliseconds: 200));

      parseProgress.value = 0.6;
      currentStep.value = ImportStep.categorizing;
      final result = await IgnApiService.instance.importBillFile(filePath);

      parseProgress.value = 1.0;
      currentStep.value = ImportStep.reviewing;
      await Future.delayed(const Duration(milliseconds: 300));

      isParsing.value = false;

      logger.i('[BillImport] 导入结果: $result');

      // Track import success
      final imported = result['imported'] ?? 0;
      await AnalyticsService().trackBillImport(
        eventType: AnalyticsEvents.billImportSuccess,
        recordCount: imported,
        success: true,
      );

      // Parse categorization items from result
      final transactions = result['transactions'] as List<dynamic>? ?? [];
      if (transactions.isNotEmpty && context.mounted) {
        final items = transactions
            .map((t) => CategorizationItem.fromJson(t as Map<String, dynamic>))
            .toList();
        categorizationItems.value = items;
        importSource.value = 'file';

        final l10n = AppLocalizations.of(context)!;
        final theme = Theme.of(context);
        _showCategorizationPreview(
          context,
          l10n,
          theme,
          items,
          categorizationItems,
          editedCount,
          importSource,
        );
      } else {
        importResult.value = result;
      }
    } catch (e) {
      isParsing.value = false;
      parseProgress.value = 0.0;
      currentStep.value = ImportStep.error;

      logger.e('[BillImport] 导入失败: $e');

      // Track import failure
      await AnalyticsService().trackBillImport(
        eventType: AnalyticsEvents.billImportFailed,
        errorMessage: e.toString(),
        success: false,
      );

      if (context.mounted) {
        errorMessage.value = e.toString();
        errorDetails.value = 'File: $filePath\nError: $e';
      }
    }
  }
}
