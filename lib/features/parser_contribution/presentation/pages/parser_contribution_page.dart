import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/utils/data_sanitizer.dart';
import '../../domain/models/parser_contribution_models.dart';
import '../../data/services/parser_contribution_service.dart';

/// Parser contribution flow page
///
/// Guides users through:
/// 1. Previewing sanitized data
/// 2. Configuring field mappings
/// 3. Submitting to GitHub
class ParserContributionPage extends HookWidget {
  /// Raw CSV/data rows to sanitize
  final List<Map<String, String>> rawRows;

  /// Original column headers
  final List<String>? headers;

  /// File format hint
  final String? detectedFormat;

  const ParserContributionPage({
    super.key,
    required this.rawRows,
    this.headers,
    this.detectedFormat,
  });

  @override
  Widget build(BuildContext context) {
    // Form state
    final institutionName = useState('');
    final institutionDisplayName = useState('');
    final selectedRegion = useState(Region.cn);
    final selectedAccountType = useState(AccountType.checking);
    final selectedFormat = useState(FileFormat.csv);
    final encoding = useState('utf-8');
    final delimiter = useState(CsvDelimiter.comma);
    final headerRows = useState(1);
    final notes = useState('');

    // Field mapping state
    final dateColumn = useState('');
    final amountColumn = useState('');
    final descriptionColumn = useState('');
    final balanceColumn = useState('');
    final signConvention = useState(SignConvention.negativeExpense);

    // Sanitization result
    final sanitizationResult = useMemoized(() {
      return sanitizeTransactionData(rawRows.take(10).toList());
    }, [rawRows]);

    // Current step (0: info, 1: preview, 2: mapping, 3: submit)
    final currentStep = useState(0);

    // Submission state
    final isSubmitting = useState(false);
    final submitResult = useState<GitHubIssueResult?>(null);

    // Auto-detect columns from headers
    useEffect(() {
      if (headers != null && headers!.isNotEmpty) {
        for (final header in headers!) {
          final lower = header.toLowerCase();
          if (dateColumn.value.isEmpty &&
              (lower.contains('date') || lower.contains('日期') || lower.contains('时间'))) {
            dateColumn.value = header;
          }
          if (amountColumn.value.isEmpty &&
              (lower.contains('amount') || lower.contains('金额') || lower.contains('交易金额'))) {
            amountColumn.value = header;
          }
          if (descriptionColumn.value.isEmpty &&
              (lower.contains('description') || lower.contains('描述') || lower.contains('摘要') || lower.contains('交易描述'))) {
            descriptionColumn.value = header;
          }
          if (balanceColumn.value.isEmpty &&
              (lower.contains('balance') || lower.contains('余额'))) {
            balanceColumn.value = header;
          }
        }
      }
      return null;
    }, [headers]);

    // Build step content
    Widget stepContent;
    switch (currentStep.value) {
      case 0:
        stepContent = _buildInfoStep(
          context,
          institutionName,
          institutionDisplayName,
          selectedRegion,
          selectedAccountType,
          selectedFormat,
          encoding,
          delimiter,
          headerRows,
          notes,
        );
        break;
      case 1:
        stepContent = _buildPreviewStep(
          context,
          sanitizationResult,
          headers,
        );
        break;
      case 2:
        stepContent = _buildMappingStep(
          context,
          headers,
          dateColumn,
          amountColumn,
          descriptionColumn,
          balanceColumn,
          signConvention,
        );
        break;
      case 3:
        stepContent = _buildSubmitStep(
          context,
          isSubmitting,
          submitResult,
        );
        break;
      default:
        stepContent = const SizedBox.shrink();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('贡献解析器数据'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        children: [
          // Step indicator
          _buildStepIndicator(context, currentStep.value),

          // Step content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: stepContent,
            ),
          ),

          // Navigation buttons
          _buildNavigationButtons(
            context,
            currentStep,
            isSubmitting,
            () => _handleSubmit(
              context,
              sanitizationResult,
              institutionName.value,
              institutionDisplayName.value,
              selectedRegion.value,
              selectedAccountType.value,
              selectedFormat.value,
              encoding.value,
              delimiter.value,
              headerRows.value,
              notes.value,
              dateColumn.value,
              amountColumn.value,
              descriptionColumn.value,
              balanceColumn.value,
              signConvention.value,
              isSubmitting,
              submitResult,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStepIndicator(BuildContext context, int currentStep) {
    const steps = ['基本信息', '数据预览', '字段映射', '提交'];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: steps.asMap().entries.map((entry) {
          final index = entry.key;
          final isCompleted = index < currentStep;
          final isCurrent = index == currentStep;

          return Expanded(
            child: Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: isCompleted || isCurrent
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.outlineVariant,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: isCompleted
                        ? Icon(
                            Icons.check,
                            size: 16,
                            color: Theme.of(context).colorScheme.onPrimary,
                          )
                        : Text(
                            '${index + 1}',
                            style: TextStyle(
                              color: isCurrent
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(context).colorScheme.outline,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
                if (index < steps.length - 1)
                  Expanded(
                    child: Container(
                      height: 2,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      color: isCompleted
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.outlineVariant,
                    ),
                  ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildNavigationButtons(
    BuildContext context,
    ValueNotifier<int> currentStep,
    ValueNotifier<bool> isSubmitting,
    VoidCallback handleSubmit,
  ) {
    final isLastStep = currentStep.value == 3;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          if (currentStep.value > 0)
            Expanded(
              child: OutlinedButton(
                onPressed: isSubmitting.value
                    ? null
                    : () => currentStep.value--,
                child: const Text('上一步'),
              ),
            ),
          if (currentStep.value > 0) const SizedBox(width: 16),
          Expanded(
            flex: currentStep.value > 0 ? 1 : 1,
            child: FilledButton(
              onPressed: isSubmitting.value
                  ? null
                  : isLastStep
                      ? handleSubmit
                      : () => currentStep.value++,
              child: isSubmitting.value
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text(isLastStep ? '提交' : '下一步'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoStep(
    BuildContext context,
    ValueNotifier<String> institutionName,
    ValueNotifier<String> institutionDisplayName,
    ValueNotifier<Region> selectedRegion,
    ValueNotifier<AccountType> selectedAccountType,
    ValueNotifier<FileFormat> selectedFormat,
    ValueNotifier<String> encoding,
    ValueNotifier<CsvDelimiter> delimiter,
    ValueNotifier<int> headerRows,
    ValueNotifier<String> notes,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '基本信息',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        Text(
          '请填写金融机构的基本信息，帮助 AI 生成正确的解析器。',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.outline,
              ),
        ),
        const SizedBox(height: 16),

        // Institution name
        TextField(
          decoration: const InputDecoration(
            labelText: '金融机构代码 *',
            hintText: '例如: china-merchants-bank',
            border: OutlineInputBorder(),
            helperText: '小写字母，连字符分隔',
          ),
          onChanged: (value) => institutionName.value = value,
        ),
        const SizedBox(height: 16),

        // Institution display name
        TextField(
          decoration: const InputDecoration(
            labelText: '金融机构名称',
            hintText: '例如: 招商银行',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) => institutionDisplayName.value = value,
        ),
        const SizedBox(height: 16),

        // Region dropdown
        DropdownButtonFormField<Region>(
          initialValue: selectedRegion.value,
          decoration: const InputDecoration(
            labelText: '地区',
            border: OutlineInputBorder(),
          ),
          items: Region.values.map((region) {
            return DropdownMenuItem(
              value: region,
              child: Text(region.displayNameZh),
            );
          }).toList(),
          onChanged: (value) {
            if (value != null) selectedRegion.value = value;
          },
        ),
        const SizedBox(height: 16),

        // Account type dropdown
        DropdownButtonFormField<AccountType>(
          initialValue: selectedAccountType.value,
          decoration: const InputDecoration(
            labelText: '账户类型',
            border: OutlineInputBorder(),
          ),
          items: AccountType.values.map((type) {
            return DropdownMenuItem(
              value: type,
              child: Text(type.displayNameZh),
            );
          }).toList(),
          onChanged: (value) {
            if (value != null) selectedAccountType.value = value;
          },
        ),
        const SizedBox(height: 16),

        // File format dropdown
        DropdownButtonFormField<FileFormat>(
          initialValue: selectedFormat.value,
          decoration: const InputDecoration(
            labelText: '文件格式',
            border: OutlineInputBorder(),
          ),
          items: FileFormat.values.map((format) {
            return DropdownMenuItem(
              value: format,
              child: Text(format.displayName),
            );
          }).toList(),
          onChanged: (value) {
            if (value != null) selectedFormat.value = value;
          },
        ),
        const SizedBox(height: 16),

        // Encoding (for CSV)
        if (selectedFormat.value == FileFormat.csv) ...[
          TextField(
            decoration: const InputDecoration(
              labelText: '文件编码',
              hintText: 'utf-8',
              border: OutlineInputBorder(),
            ),
            controller: TextEditingController(text: encoding.value),
            onChanged: (value) => encoding.value = value,
          ),
          const SizedBox(height: 16),

          // Delimiter
          DropdownButtonFormField<CsvDelimiter>(
            initialValue: delimiter.value,
            decoration: const InputDecoration(
              labelText: 'CSV 分隔符',
              border: OutlineInputBorder(),
            ),
            items: CsvDelimiter.values.map((d) {
              return DropdownMenuItem(
                value: d,
                child: Text(d.displayName),
              );
            }).toList(),
            onChanged: (value) {
              if (value != null) delimiter.value = value;
            },
          ),
          const SizedBox(height: 16),

          // Header rows
          TextField(
            decoration: const InputDecoration(
              labelText: '表头行数',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
            controller: TextEditingController(text: headerRows.value.toString()),
            onChanged: (value) {
              final parsed = int.tryParse(value);
              if (parsed != null && parsed >= 0) {
                headerRows.value = parsed;
              }
            },
          ),
          const SizedBox(height: 16),
        ],

        // Notes
        TextField(
          decoration: const InputDecoration(
            labelText: '备注',
            hintText: '其他有助于解析的信息...',
            border: OutlineInputBorder(),
          ),
          maxLines: 3,
          onChanged: (value) => notes.value = value,
        ),
      ],
    );
  }

  Widget _buildPreviewStep(
    BuildContext context,
    SanitizationResult result,
    List<String>? headers,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '数据预览',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        Text(
          '以下是脱敏后的交易数据，敏感信息已被遮盖。金额和日期保持原值以便 AI 理解格式。',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.outline,
              ),
        ),
        const SizedBox(height: 16),

        // Validation errors
        if (!result.isValid) ...[
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.errorContainer,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.warning_amber,
                      color: Theme.of(context).colorScheme.error,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '检测到可能的敏感信息',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onErrorContainer,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                ...result.validationErrors.take(5).map((error) => Padding(
                      padding: const EdgeInsets.only(left: 32, bottom: 4),
                      child: Text(
                        '• $error',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onErrorContainer,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],

        // Data table
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.outlineVariant,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: (headers ?? result.sanitizedRows.first.keys)
                  .map((h) => DataColumn(label: Text(h, style: const TextStyle(fontSize: 12))))
                  .toList(),
              rows: result.sanitizedRows.take(5).map((row) {
                return DataRow(
                  cells: row.values.map((value) {
                    return DataCell(Text(
                      value.length > 20 ? '${value.substring(0, 20)}...' : value,
                      style: const TextStyle(fontSize: 11),
                    ));
                  }).toList(),
                );
              }).toList(),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '显示前 ${result.sanitizedRows.length.clamp(0, 5)} 行数据',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.outline,
              ),
        ),
      ],
    );
  }

  Widget _buildMappingStep(
    BuildContext context,
    List<String>? headers,
    ValueNotifier<String> dateColumn,
    ValueNotifier<String> amountColumn,
    ValueNotifier<String> descriptionColumn,
    ValueNotifier<String> balanceColumn,
    ValueNotifier<SignConvention> signConvention,
  ) {
    final availableColumns = headers ?? <String>[];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '字段映射',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        Text(
          '选择 CSV 文件中对应的字段列，帮助 AI 正确解析数据。',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.outline,
              ),
        ),
        const SizedBox(height: 24),

        // Date column
        DropdownButtonFormField<String>(
          initialValue: dateColumn.value.isNotEmpty ? dateColumn.value : null,
          decoration: const InputDecoration(
            labelText: '日期列 *',
            border: OutlineInputBorder(),
          ),
          items: availableColumns.map((col) {
            return DropdownMenuItem(value: col, child: Text(col));
          }).toList(),
          onChanged: (value) {
            if (value != null) dateColumn.value = value;
          },
        ),
        const SizedBox(height: 16),

        // Amount column
        DropdownButtonFormField<String>(
          initialValue: amountColumn.value.isNotEmpty ? amountColumn.value : null,
          decoration: const InputDecoration(
            labelText: '金额列 *',
            border: OutlineInputBorder(),
          ),
          items: availableColumns.map((col) {
            return DropdownMenuItem(value: col, child: Text(col));
          }).toList(),
          onChanged: (value) {
            if (value != null) amountColumn.value = value;
          },
        ),
        const SizedBox(height: 16),

        // Sign convention
        DropdownButtonFormField<SignConvention>(
          initialValue: signConvention.value,
          decoration: const InputDecoration(
            labelText: '金额正负号约定',
            border: OutlineInputBorder(),
          ),
          items: SignConvention.values.map((conv) {
            return DropdownMenuItem(
              value: conv,
              child: Text(conv.displayName),
            );
          }).toList(),
          onChanged: (value) {
            if (value != null) signConvention.value = value;
          },
        ),
        const SizedBox(height: 16),

        // Description column (optional)
        DropdownButtonFormField<String>(
          initialValue: descriptionColumn.value.isNotEmpty ? descriptionColumn.value : null,
          decoration: const InputDecoration(
            labelText: '描述列 (可选)',
            border: OutlineInputBorder(),
          ),
          items: availableColumns.map((col) {
            return DropdownMenuItem(value: col, child: Text(col));
          }).toList(),
          onChanged: (value) {
            descriptionColumn.value = value ?? '';
          },
        ),
        const SizedBox(height: 16),

        // Balance column (optional)
        DropdownButtonFormField<String>(
          initialValue: balanceColumn.value.isNotEmpty ? balanceColumn.value : null,
          decoration: const InputDecoration(
            labelText: '余额列 (可选)',
            border: OutlineInputBorder(),
          ),
          items: availableColumns.map((col) {
            return DropdownMenuItem(value: col, child: Text(col));
          }).toList(),
          onChanged: (value) {
            balanceColumn.value = value ?? '';
          },
        ),
      ],
    );
  }

  Widget _buildSubmitStep(
    BuildContext context,
    ValueNotifier<bool> isSubmitting,
    ValueNotifier<GitHubIssueResult?> submitResult,
  ) {
    final result = submitResult.value;

    if (isSubmitting.value) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 16),
          Text(
            '正在提交...',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      );
    }

    if (result != null) {
      if (result.success) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline,
              size: 64,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 16),
            Text(
              '提交成功！',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              '感谢您的贡献！我们会尽快为您创建解析器。\n预计处理时间: 1-3 个工作日',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            if (result.issueUrl != null)
              FilledButton.icon(
                onPressed: () {
                  launchUrl(Uri.parse(result.issueUrl!));
                },
                icon: const Icon(Icons.open_in_new),
                label: Text('查看 Issue #${result.issueNumber}'),
              ),
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              '提交失败',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              result.errorMessage ?? '请稍后重试',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
        );
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '准备提交',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        Text(
          '数据已准备就绪，点击提交按钮将创建 GitHub Issue。\n您的贡献将帮助更多用户使用此解析器。',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.outline,
              ),
        ),
        const SizedBox(height: 24),
        Center(
          child: Icon(
            Icons.send,
            size: 64,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }

  Future<void> _handleSubmit(
    BuildContext context,
    SanitizationResult sanitizationResult,
    String institutionName,
    String institutionDisplayName,
    Region region,
    AccountType accountType,
    FileFormat format,
    String encoding,
    CsvDelimiter delimiter,
    int headerRows,
    String notes,
    String dateColumn,
    String amountColumn,
    String descriptionColumn,
    String balanceColumn,
    SignConvention signConvention,
    ValueNotifier<bool> isSubmitting,
    ValueNotifier<GitHubIssueResult?> submitResult,
  ) async {
    if (institutionName.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('请填写金融机构代码')),
      );
      return;
    }

    if (dateColumn.isEmpty || amountColumn.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('请选择日期和金额字段')),
      );
      return;
    }

    isSubmitting.value = true;

    try {
      final request = ParserContributionRequest(
        institution: institutionName,
        institutionDisplayName: institutionDisplayName.isNotEmpty ? institutionDisplayName : null,
        region: region,
        accountType: accountType,
        format: format,
        encoding: encoding.isNotEmpty ? encoding : null,
        delimiter: delimiter,
        headerRows: headerRows,
        notes: notes.isNotEmpty ? notes : null,
        samples: SanitizedSamples(
          rows: sanitizationResult.sanitizedRows,
          rawHeaders: headers,
        ),
        fieldHints: FieldHints(
          date: FieldHint(columnName: dateColumn),
          amount: FieldHint(
            columnName: amountColumn,
            signConvention: signConvention,
          ),
          description: descriptionColumn.isNotEmpty
              ? FieldHint(columnName: descriptionColumn)
              : null,
          balance: balanceColumn.isNotEmpty
              ? FieldHint(columnName: balanceColumn)
              : null,
        ),
      );

      final result = await ParserContributionService().createIssue(request: request);
      submitResult.value = result;
    } finally {
      isSubmitting.value = false;
    }
  }
}
