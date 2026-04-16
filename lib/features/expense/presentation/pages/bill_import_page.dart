import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/services/auth_service.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/services/analytics_events.dart';
import '../../../../core/utils/logger.dart';
import '../../../../parser/parser.dart';
import '../widgets/batch_import_summary.dart';
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
              _buildFileUploadArea(context, l10n, theme, selectedFile, isParsing, parseProgress, importResult, categorizationItems, editedCount, importSource, currentStep, lastImportPath, errorMessage, errorDetails),

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
    ValueNotifier<String?> lastImportPath,
    ValueNotifier<String?> errorMessage,
    ValueNotifier<String?> errorDetails,
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
                selectedFile,
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
                // 开始导入解析
                if (context.mounted) {
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
                    selectedFile,
                  );
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
    ValueNotifier<PlatformFile?> selectedFile,
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
                  selectedFile,
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
                  selectedFile,
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
    ValueNotifier<PlatformFile?> selectedFile,
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
            selectedFile,
            isParsing,
            currentStep,
            importResult,
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
                      selectedFile,
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
    final batchResult = BatchImportResult.fromJson(result);

    // Set current step based on result
    if (batchResult.isSuccess) {
      currentStep.value = ImportStep.complete;
    } else {
      currentStep.value = ImportStep.error;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BatchImportSummary(
        result: batchResult,
        onViewImported: () {
          // Navigate to income/expense page
          Navigator.pop(context);
        },
        onReviewLowConfidence: batchResult.hasReviewItems
            ? () {
                // Navigate to review center with low confidence filter
                Navigator.pop(context);
              }
            : null,
        onContinueImport: () {
          selectedFile.value = null;
          isParsing.value = false;
          importResult.value = null;
          currentStep.value = ImportStep.idle;
        },
        onDone: () {
          Navigator.pop(context);
        },
      ),
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
    ValueNotifier<PlatformFile?> selectedFile,
    ValueNotifier<bool> isParsing,
    ValueNotifier<ImportStep> currentStep,
    ValueNotifier<Map<String, dynamic>?> importResult,
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
      builder: (sheetContext) => CategorizationPreviewSheet(
        items: items,
        availableCategories: defaultCategories,
        onConfirm: () {
          Navigator.pop(sheetContext);
          _confirmCategorization(
            context,  // 使用外部页面的 context，而不是弹窗的 context
            l10n,
            theme,
            categorizationItems,
            editedCount,
            importSource,
            importResult,
            isParsing,
            currentStep,
          );
        },
        onCancel: () {
          Navigator.pop(sheetContext);
          // 重置状态，允许用户重新选择文件
          selectedFile.value = null;
          isParsing.value = false;
          currentStep.value = ImportStep.idle;
          categorizationItems.value = [];
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
    ValueNotifier<Map<String, dynamic>?> importResult,
    ValueNotifier<bool> isParsing,
    ValueNotifier<ImportStep> currentStep,
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

    // Convert CategorizationItems to API request format and upload
    // 参考 parser-usage-guide.md 5.2 节的请求格式
    // 注意: beancount 要求交易必须平衡 (sum of postings = 0)
    // 支出交易需要两个 posting:
    // 1. 费用账户 (Expenses:xxx) - 正数表示费用增加
    // 2. 资产账户 (Assets:xxx) - 负数表示资产减少
    final transactions = items.map((item) {
      final expenseAccount = _categoryToAccount(item.selectedCategory);
      final isIncome = item.selectedCategory == '收入';
      final amount = item.amount.abs();

      return {
        'date': '${item.date.year.toString().padLeft(4, '0')}-'
            '${item.date.month.toString().padLeft(2, '0')}-'
            '${item.date.day.toString().padLeft(2, '0')}',
        'narration': item.merchant,
        'payee': item.merchant, // 交易对象
        'postings': [
          {
            'account': expenseAccount,
            'units': isIncome ? amount.toStringAsFixed(2) : amount.toStringAsFixed(2),
            'currency': 'CNY',
          },
          {
            // 来源/去处账户: 支出时资产减少, 收入时资产增加
            // 使用 Assets:Unknown (后端 account standards 中定义的账户)
            'account': 'Assets:Unknown',
            'units': (-amount).toStringAsFixed(2), // 与支出金额相反
            'currency': 'CNY',
          },
        ],
        'meta': {
          'source': 'bill-import',
          'category': item.selectedCategory,
          'confidence': item.confidence,
        },
        'idempotencyKey': 'import-${item.id}',
        'autoCreateAccounts': true, // 自动创建不存在的账户
      };
    }).toList();

    // 显示加载状态
    isParsing.value = true;
    currentStep.value = ImportStep.uploading;

    Map<String, dynamic>? result;
    Object? error;

    try {
      // Upload transactions to backend
      result = await IgnApiService.instance.uploadParsedTransactions(transactions);
      logger.i('[BillImport] 上传交易成功: $result');
    } catch (e) {
      error = e;
      logger.e('[BillImport] 上传交易失败: $e');
    }

    // 关闭加载状态并更新结果
    isParsing.value = false;

    if (context.mounted) {
      if (result != null) {
        // 设置导入结果，让页面显示结果摘要
        importResult.value = result;
        currentStep.value = ImportStep.complete;

        final imported = result['imported'] as int;
        final failed = result['failed'] as int;
        final skipped = result['skipped'] as int;

        // 显示简短提示
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('已导入 $imported 笔记账${skipped > 0 ? '，跳过 $skipped 笔重复' : ''}'),
            backgroundColor: failed > 0 ? Colors.orange : null,
          ),
        );
      } else if (error != null) {
        currentStep.value = ImportStep.error;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('导入失败: $error'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  /// Convert category to beancount account path
  /// Note: 后端目前只支持 Expenses:Uncategorized，分类信息保存在 meta 中
  /// 用户可以在应用内后续重新分类
  String _categoryToAccount(String category) {
    if (category == '收入') {
      return 'Income:Uncategorized';
    }
    // 所有支出类型统一使用 Expenses:Uncategorized
    // 分类信息保存在 meta.category 中，用户可后续重新分类
    return 'Expenses:Uncategorized';
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

  /// 开始导入文件 (使用本地解析器)
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
    ValueNotifier<PlatformFile?> selectedFile,
  ) async {
    isParsing.value = true;
    currentStep.value = ImportStep.parsing;
    parseProgress.value = 0.1;
    lastImportPath.value = filePath;
    errorMessage.value = null;
    errorDetails.value = null;

    // Track import started
    await AnalyticsService().trackBillImport(
      eventType: AnalyticsEvents.billImportStarted,
    );

    try {
      // 读取文件
      parseProgress.value = 0.2;
      final file = File(filePath);
      final content = await file.readAsBytes();
      final filename = filePath.split('/').last;

      logger.i('[BillImport] 文件名: $filename');
      logger.i('[BillImport] 文件大小: ${content.length} bytes');

      // 输出文件内容的前 500 字节用于调试
      try {
        final preview = utf8.decode(content.take(500).toList());
        logger.i('[BillImport] 文件内容预览:\n$preview');
      } catch (e) {
        logger.w('[BillImport] 无法用 UTF-8 解码预览: $e');
      }

      // 使用 ParserRegistry 检测并解析
      parseProgress.value = 0.4;
      final registry = ParserRegistry();
      logger.i('[BillImport] 可用解析器: ${registry.availableParsers.join(", ")}');

      final parser = registry.detect(filename, content);

      if (parser == null) {
        logger.e('[BillImport] 无法识别文件格式');
        throw Exception('不支持的文件格式，请使用支付宝或微信账单');
      }

      logger.i('[BillImport] 检测到解析器');

      // 解析文件
      parseProgress.value = 0.6;
      currentStep.value = ImportStep.categorizing;
      final result = parser.parse(content);

      // 处理解析结果
      parseProgress.value = 0.8;
      currentStep.value = ImportStep.reviewing;

      switch (result) {
        case ParseSuccess():
          logger.i('[BillImport] 解析成功: ${result.data.length} 条交易');

          // 处理警告
          if (result.warnings != null && result.warnings!.isNotEmpty) {
            for (final warning in result.warnings!) {
              logger.w('[BillImport] 解析警告: ${warning.message}');
            }
          }

          // 转换为 CategorizationItem
          final items = result.data.map((txn) {
            return CategorizationItem(
              id: txn.metadata?['orderNo'] ?? '${txn.date.toIso8601String()}_${txn.amount}',
              merchant: txn.payee ?? txn.description,
              amount: txn.amount.abs().toDouble(),
              date: txn.date,
              suggestedCategory: _inferCategory(txn.description, txn.payee),
              confidence: _calculateConfidence(txn),
              selectedCategory: _inferCategory(txn.description, txn.payee),
            );
          }).toList();

          if (items.isEmpty) {
            throw Exception('未找到有效的交易记录');
          }

          parseProgress.value = 1.0;
          isParsing.value = false;
          categorizationItems.value = items;
          importSource.value = 'file';

          // Track parse success
          await AnalyticsService().trackBillImport(
            eventType: AnalyticsEvents.billImportSuccess,
            recordCount: items.length,
            success: true,
          );

          if (context.mounted) {
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
              selectedFile,
              isParsing,
              currentStep,
              importResult,
            );
          }

        case ParseFailure():
          final errorMessages = result.errors.map((e) => e.message).join('\n');
          throw Exception('解析失败:\n$errorMessages');
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

  /// 根据描述推断分类
  String _inferCategory(String description, String? payee) {
    final text = '$description ${payee ?? ''}'.toLowerCase();

    // 简单的分类规则
    if (text.contains('餐') || text.contains('食') || text.contains('外卖') ||
        text.contains('coffee') || text.contains('咖啡')) {
      return '餐饮';
    }
    if (text.contains('滴滴') || text.contains('打车') || text.contains('地铁') ||
        text.contains('公交') || text.contains('加油')) {
      return '交通';
    }
    if (text.contains('超市') || text.contains('购物') || text.contains('淘宝') ||
        text.contains('京东') || text.contains('拼多多')) {
      return '购物';
    }
    if (text.contains('电影') || text.contains('游戏') || text.contains('娱乐')) {
      return '娱乐';
    }
    if (text.contains('医疗') || text.contains('药') || text.contains('医院')) {
      return '医疗';
    }
    if (text.contains('教育') || text.contains('培训') || text.contains('书')) {
      return '教育';
    }
    if (text.contains('房租') || text.contains('水电') || text.contains('物业')) {
      return '居住';
    }
    if (text.contains('话费') || text.contains('流量') || text.contains('宽带')) {
      return '通讯';
    }
    if (text.contains('工资') || text.contains('薪') || text.contains('奖金')) {
      return '收入';
    }

    return '其他';
  }

  /// 计算置信度 (0-100)
  double _calculateConfidence(dynamic txn) {
    // 基于交易信息计算置信度
    // 有商家的交易
    if (txn.payee != null && txn.payee!.isNotEmpty) {
      return 80.0;
    }
    // 有备注的交易
    if (txn.description != null && txn.description!.isNotEmpty) {
      return 70.0;
    }
    // 默认中等置信度
    return 60.0;
  }
}
