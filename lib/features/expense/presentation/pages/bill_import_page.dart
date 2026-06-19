import 'dart:io';
import 'dart:typed_data';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/services/document_scanner_service.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/services/auth_service.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/services/analytics_events.dart';
import '../../../../core/utils/logger.dart';
import 'package:excel/excel.dart' show Excel;
import '../../../../parser/parser.dart';
import '../../../../parser/src/utils/encoding.dart' as encoding;
import '../widgets/batch_import_summary.dart';
import '../widgets/categorization_preview_sheet.dart';
import '../widgets/import_error_display.dart';
import '../widgets/import_progress_indicator.dart';
import '../../../../shared/signals/asset_refresh_signal.dart';
import '../../../review_center/presentation/signals/review_center_signal.dart';

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
      body: Column(
        children: [
          TopBar(title: l10n.billImportTitle),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: TokenSpacing.xl),

                  // Stepped progress indicator
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
                    child: ImportProgressIndicator(
                      currentStep: currentStep.value,
                      progress: parseProgress.value,
                      itemCount: categorizationItems.value.isNotEmpty
                          ? categorizationItems.value.length
                          : null,
                    ),
                  ),

                  const SizedBox(height: TokenSpacing.xl),

                  // Title
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
                    child: Text(
                      l10n.pleaseImportAlipayBill,
                      style: TokenTypography.h4(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: TokenSpacing.xl),

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
                    _buildImportResultArea(context, l10n, theme, importResult,
                        selectedFile, isParsing, currentStep)
                  else if (isParsing.value)
                    _buildParsingArea(context, l10n, theme, parseProgress,
                        selectedFile, currentStep)
                  else if (selectedFile.value != null)
                    _buildSelectedFileArea(context, l10n, theme, selectedFile)
                  else
                    _buildFileUploadArea(
                        context,
                        l10n,
                        theme,
                        selectedFile,
                        isParsing,
                        parseProgress,
                        importResult,
                        categorizationItems,
                        editedCount,
                        importSource,
                        currentStep,
                        lastImportPath,
                        errorMessage,
                        errorDetails),

                  const SizedBox(height: TokenSpacing.xl),

                  // How to get bill section
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.howToGetBill,
                          style: TokenTypography.h4(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: TokenSpacing.xl),
                        _buildStepCard(context, theme,
                            '支持 CSV、Excel (.xlsx, .xls) 格式的账单文件'),
                        const SizedBox(height: TokenSpacing.sm),
                        _buildStepCard(context, theme, '文件大小不超过 10MB'),
                        const SizedBox(height: TokenSpacing.sm),
                        _buildStepCard(context, theme, '账单需包含日期、金额等基本信息'),
                        const SizedBox(height: TokenSpacing.sm),
                        _buildStepCard(context, theme, '支持支付宝、微信、银行账单格式'),
                      ],
                    ),
                  ),

                  const SizedBox(height: TokenSpacing.xl),
                ],
              ),
            ),
          ),
        ],
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
      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
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
                padding: const EdgeInsets.symmetric(vertical: TokenSpacing.xl),
              ),
            ),
          ),

          const SizedBox(height: TokenSpacing.xl),

          // Divider
          Row(
            children: [
              Expanded(
                  child: Divider(
                      color: TokenColors.textTertiary.withValues(alpha: 0.3))),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
                child: Text(
                  'OR',
                  style: TokenTypography.caption(
                    color: TokenColors.textTertiary,
                  ),
                ),
              ),
              Expanded(
                  child: Divider(
                      color: TokenColors.textTertiary.withValues(alpha: 0.3))),
            ],
          ),

          const SizedBox(height: TokenSpacing.xl),

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

              if (result != null &&
                  result.files.single.path != null &&
                  context.mounted) {
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
                borderRadius: TokenRadius.borderSm,
                border: Border.all(
                  color: TokenColors.textTertiary.withValues(alpha: 0.2),
                  style: BorderStyle.solid,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.insert_drive_file_outlined,
                    size: 48,
                    color: TokenColors.textTertiary,
                  ),
                  const SizedBox(height: TokenSpacing.xl),
                  Text(
                    l10n.addFile,
                    style: TokenTypography.h4(),
                  ),
                  const SizedBox(height: TokenSpacing.sm),
                  Text(
                    l10n.supportedFormats,
                    style: TokenTypography.caption(
                      color: TokenColors.textTertiary,
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

    String? imagePath;

    if (source == ImageSource.camera) {
      // Use document scanner for camera source
      imagePath = await DocumentScannerService.instance.scanDocument();
    } else {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(
        source: source,
        maxWidth: 1920,
        maxHeight: 1080,
        imageQuality: 85,
      );
      imagePath = image?.path;
    }

    if (imagePath == null) return;

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
      final result = await IgnApiService.instance.ocrReceiptImage(imagePath);

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
      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
      child: Container(
        padding: const EdgeInsets.all(TokenSpacing.xl),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest,
          borderRadius: TokenRadius.borderSm,
        ),
        child: Row(
          children: [
            Icon(
              Icons.insert_drive_file,
              size: 32,
              color: theme.colorScheme.onSurface,
            ),
            const SizedBox(width: TokenSpacing.lg),
            Expanded(
              child: Text(
                selectedFile.value?.name ?? '',
                style: TokenTypography.body(),
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
      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
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
      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(TokenSpacing.xl),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest,
              borderRadius: TokenRadius.borderSm,
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 32,
                  height: 32,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
                const SizedBox(width: TokenSpacing.lg),
                Expanded(
                  child: Text(
                    selectedFile.value?.name ?? l10n.parsingBill,
                    style: TokenTypography.body(),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: TokenSpacing.xl),
          Text(
            l10n.parsingBill,
            style: TokenTypography.body(
              color: TokenColors.textTertiary,
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
      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
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

  /// Show result dialog after API-side import
  void _showApiImportResult(
    BuildContext context,
    AppLocalizations l10n,
    int imported,
    int failed,
    int pendingReviews,
  ) {
    final theme = Theme.of(context);
    final totalMsg = StringBuffer();
    if (imported > 0) totalMsg.write('成功导入 $imported 条');
    if (pendingReviews > 0) {
      if (totalMsg.isNotEmpty) totalMsg.write('，');
      totalMsg.write('$pendingReviews 条待审核');
    }
    if (failed > 0) {
      if (totalMsg.isNotEmpty) totalMsg.write('，');
      totalMsg.write('$failed 条失败');
    }
    if (totalMsg.isEmpty) totalMsg.write('未找到有效交易记录');

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(totalMsg.toString()),
        duration: const Duration(seconds: 3),
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
          : items.map((e) => e.confidence).reduce((a, b) => a + b) /
              items.length,
      source: importSource.value,
    );

    // Default categories (in production, these would come from beancount config)
    final defaultCategories = [
      '餐饮',
      '交通',
      '购物',
      '娱乐',
      '医疗',
      '教育',
      '居住',
      '通讯',
      '其他'
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
            context, // 使用外部页面的 context，而不是弹窗的 context
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
    final edits =
        items.where((e) => e.selectedCategory != e.suggestedCategory).length;

    // Track confirmation
    await AnalyticsService().trackCategorization(
      eventType: AnalyticsEvents.categorizationConfirmed,
      itemCount: items.length,
      editedCount: edits,
      avgConfidence: items.isEmpty
          ? 0
          : items.map((e) => e.confidence).reduce((a, b) => a + b) /
              items.length,
      source: importSource.value,
    );

    // Convert CategorizationItems to API request format and upload
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
            'units': isIncome
                ? amount.toStringAsFixed(2)
                : amount.toStringAsFixed(2),
            'currency': 'CNY',
          },
          {
            'account': 'Assets:Unknown',
            'units': (-amount).toStringAsFixed(2),
            'currency': 'CNY',
          },
        ],
        'meta': {
          'source': 'bill-import',
          'category': item.selectedCategory,
          'confidence': item.confidence,
        },
        'idempotencyKey': 'import-${item.id}',
        'autoCreateAccounts': true,
      };
    }).toList();

    // 显示加载状态
    isParsing.value = true;
    currentStep.value = ImportStep.uploading;

    Map<String, dynamic>? result;
    Object? error;

    try {
      // Upload transactions to backend
      result =
          await IgnApiService.instance.uploadParsedTransactions(transactions);
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

        // Refresh asset data after successful import
        refreshAssetData();
        fetchPendingCount();

        // 显示简短提示
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                '已导入 $imported 笔记账${skipped > 0 ? '，跳过 $skipped 笔重复' : ''}'),
            backgroundColor: failed > 0 ? TokenColors.primary : null,
          ),
        );
      } else if (error != null) {
        currentStep.value = ImportStep.error;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('导入失败: $error'),
            backgroundColor: TokenColors.error,
          ),
        );
      }
    }
  }

  /// Convert category to beancount account path
  String _categoryToAccount(String category) {
    if (category == '收入') {
      return 'Income:Uncategorized';
    }
    return 'Expenses:Uncategorized';
  }

  Widget _buildStepCard(BuildContext context, ThemeData theme, String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(TokenSpacing.lg),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: TokenRadius.borderSm,
      ),
      child: Row(
        children: [
          Icon(Icons.info_outline, size: 16, color: TokenColors.textTertiary),
          const SizedBox(width: TokenSpacing.sm),
          Expanded(
            child: Text(
              text,
              style: TokenTypography.body(),
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

      // XLSX/XLS conversion: convert Excel to tab-separated text
      Uint8List parseContent = content;
      final ext = filename.toLowerCase().split('.').last;
      if (ext == 'xlsx' || ext == 'xls') {
        logger.i('[BillImport] 检测到 Excel 文件，转换为文本格式');
        try {
          final excelData = Excel.decodeBytes(content);
          final buffer = StringBuffer();
          for (final table in excelData.tables.keys) {
            final sheet = excelData.tables[table]!;
            for (final row in sheet.rows) {
              final cells =
                  row.map((cell) => cell?.value?.toString() ?? '').join('\t');
              buffer.writeln(cells);
            }
          }
          parseContent = Uint8List.fromList(utf8.encode(buffer.toString()));
          logger.i('[BillImport] Excel 转换完成，${parseContent.length} bytes');
        } catch (e) {
          logger.w('[BillImport] Excel 解析失败: $e');
        }
      }

      // 输出文件内容的前 500 字节用于调试
      try {
        final preview = encoding.decodeContent(
          Uint8List.fromList(parseContent.take(500).toList()),
        );
        logger.i('[BillImport] 文件内容预览:\n$preview');
      } catch (e) {
        logger.w('[BillImport] 无法解码预览: $e');
      }

      // 使用 ParserRegistry 检测并解析
      parseProgress.value = 0.4;
      final registry = ParserRegistry();
      logger.i('[BillImport] 可用解析器: ${registry.availableParsers.join(", ")}');

      final parser = registry.detect(filename, parseContent);

      if (parser == null) {
        // Local parser not available, fall back to backend API import
        logger.i('[BillImport] 本地无匹配解析器，尝试后端 API 导入');
        currentStep.value = ImportStep.categorizing;
        try {
          final apiResult =
              await IgnApiService.instance.importBillFile(filePath);
          final imported = apiResult['imported'] as int? ?? 0;
          final failed = apiResult['failed'] as int? ?? 0;
          final pendingReviews = apiResult['pendingReviews'] as int? ?? 0;
          logger.i(
              '[BillImport] API导入完成: imported=$imported, failed=$failed, pending=$pendingReviews');

          parseProgress.value = 1.0;
          isParsing.value = false;
          importResult.value = apiResult;

          if (imported > 0 || pendingReviews > 0) {
            refreshAssetData();
            fetchPendingCount();
          }

          if (context.mounted) {
            final l10n = AppLocalizations.of(context)!;
            _showApiImportResult(
                context, l10n, imported, failed, pendingReviews);
          }
          return;
        } catch (apiError) {
          logger.e('[BillImport] API导入也失败: $apiError');
          throw Exception('无法识别文件格式，请使用支付宝或微信账单');
        }
      }

      logger.i('[BillImport] 检测到解析器');

      // 解析文件
      parseProgress.value = 0.6;
      currentStep.value = ImportStep.categorizing;
      final result = parser.parse(parseContent);

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
              id: txn.metadata?['orderNo'] ??
                  '${txn.date.toIso8601String()}_${txn.amount}',
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

    if (text.contains('餐') ||
        text.contains('食') ||
        text.contains('外卖') ||
        text.contains('coffee') ||
        text.contains('咖啡')) {
      return '餐饮';
    }
    if (text.contains('滴滴') ||
        text.contains('打车') ||
        text.contains('地铁') ||
        text.contains('公交') ||
        text.contains('加油')) {
      return '交通';
    }
    if (text.contains('超市') ||
        text.contains('购物') ||
        text.contains('淘宝') ||
        text.contains('京东') ||
        text.contains('拼多多')) {
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
