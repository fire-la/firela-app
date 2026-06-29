import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/components/components.dart';
import '../../../../core/services/receipt_text_parser.dart';
import '../../../../core/services/ocr/line_reconstructor.dart';
import '../../../../core/utils/formatters.dart';

/// Editable line item for user modification
class _EditableItem {
  String name;
  double price;
  /// Whether this item looks suspicious (name is likely not a real product name)
  final bool isLowConfidence;

  _EditableItem({required this.name, required this.price, this.isLowConfidence = false});
}

/// Heuristic: does this look like a real product name?
/// Low confidence if name is mostly digits, single char, or looks like a code.
bool _isSuspectName(String name) {
  final trimmed = name.trim();
  if (trimmed.isEmpty) return true;
  // All digits (e.g. "150g" without product name)
  if (RegExp(r'^[\d.]+g?s?$').hasMatch(trimmed)) return true;
  // Very short and all digits
  if (trimmed.length <= 2 && RegExp(r'^\d+$').hasMatch(trimmed)) return true;
  // Looks like a barcode / product code
  if (RegExp(r'^\d{5,}$').hasMatch(trimmed)) return true;
  return false;
}

/// Debug sheet showing OCR recognition results for accuracy verification
class OcrResultDebugSheet extends StatefulWidget {
  final ParsedReceipt receipt;
  final String ocrSource;
  final Duration processingTime;
  final void Function(OcrConfirmResult)? onConfirm;

  /// Reconstructed lines from coordinate clustering (for debug display)
  final List<ReconstructedLine> reconstructedLines;

  const OcrResultDebugSheet({
    super.key,
    required this.receipt,
    required this.ocrSource,
    required this.processingTime,
    this.onConfirm,
    this.reconstructedLines = const [],
  });

  @override
  State<OcrResultDebugSheet> createState() => _OcrResultDebugSheetState();
}

class _OcrResultDebugSheetState extends State<OcrResultDebugSheet> {
  late List<_EditableItem> _editedItems;
  late String _merchantName;
  late DateTime _selectedDate;
  TransactionMode _mode = TransactionMode.single;

  @override
  void initState() {
    super.initState();
    _merchantName = widget.receipt.merchant;
    _selectedDate = widget.receipt.date ?? DateTime.now();
    _editedItems = widget.receipt.lineItems
        .map((item) => _EditableItem(
              name: item.name,
              price: item.totalPrice,
              isLowConfidence: _isSuspectName(item.name) || item.totalPrice <= 0,
            ))
        .toList();
  }

  /// Live sum of edited line item prices
  double get _lineItemsTotal => _editedItems.fold<double>(0, (sum, item) => sum + item.price);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final receipt = widget.receipt;
    final isValid = receipt.isValid && receipt.confidence >= 30;

    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.9,
      expand: false,
      builder: (context, scrollController) => Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(TokenSpacing.xxl)),
        ),
        child: Column(
          children: [
            // Handle
            Container(
              margin: const EdgeInsets.only(top: TokenSpacing.sm),
              width: 40, height: TokenSpacing.xs,
              decoration: BoxDecoration(
                color: TokenColors.textTertiary.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            // Header
            Padding(
              padding: const EdgeInsets.all(TokenSpacing.xl),
              child: Row(
                children: [
                  Icon(
                    isValid ? Icons.check_circle : Icons.warning,
                    color: isValid ? TokenColors.success : TokenColors.primary,
                  ),
                  const SizedBox(width: TokenSpacing.sm),
                  Expanded(
                    child: Text(
                      isValid ? l10n.ocrResultTitle : l10n.ocrResultTitleLowConfidence,
                      style: TokenTypography.h4(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  _buildBadge(theme, widget.ocrSource, widget.processingTime),
                ],
              ),
            ),
            // Content
            Expanded(
              child: ListView(
                controller: scrollController,
                padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
                children: [
                  // Parsed fields
                  _buildSection(theme, l10n.ocrParsedResult, [
                    _buildMerchantField(theme, l10n),
                    _buildAmountRow(theme, l10n),
                    _buildDateField(theme, l10n),
                    _buildFieldRow(theme, l10n.ocrConfidence, '${receipt.confidence.toStringAsFixed(1)}%', receipt.confidence >= 50),
                    _buildFieldRow(theme, l10n.ocrLineItemCount, '${receipt.lineItems.length} ${l10n.items}', receipt.lineItems.isNotEmpty),
                  ]),
                  const SizedBox(height: TokenSpacing.xl),

                  // Confidence bar
                  _buildConfidenceBar(theme, l10n, receipt.confidence),
                  const SizedBox(height: TokenSpacing.xl),

                  // Mode toggle
                  _buildModeToggle(theme, l10n),
                  const SizedBox(height: TokenSpacing.xl),

                  // Editable line items
                  _buildEditableLineItems(theme, l10n),
                  const SizedBox(height: TokenSpacing.xl),

                  // Order total from line items
                  if (_editedItems.isNotEmpty)
                    _buildLineItemsTotal(theme, l10n),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            // Action buttons
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(TokenSpacing.xl),
                child: widget.onConfirm != null
                    ? ButtonPrimary(
                        label: l10n.confirm,
                        icon: const Icon(Icons.check, size: 20, color: TokenColors.white),
                        onPressed: _onConfirm,
                      )
                    : const SizedBox.shrink(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onConfirm() {
    // Build edited line items list
    final editedItems = _editedItems
        .where((item) => item.name.isNotEmpty && item.price > 0)
        .map((item) => ParsedLineItem(name: item.name, totalPrice: item.price))
        .toList();

    final total = editedItems.fold<double>(0, (sum, item) => sum + item.totalPrice);

    Navigator.pop(context);
    widget.onConfirm?.call(OcrConfirmResult(
      mode: _mode,
      editedLineItems: editedItems,
      totalAmount: total,
      merchant: _merchantName,
      selectedDate: _selectedDate,
    ));
  }

  // ─── Date field (tappable to pick date) ───

  Widget _buildDateField(ThemeData theme, AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.only(bottom: TokenSpacing.xs),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 60,
            child: Text(l10n.ocrDate, style: TokenTypography.caption(
              color: TokenColors.textTertiary,
            )),
          ),
          Expanded(
            child: SizedBox(
              height: 32,
              child: Tappable(
                semanticLabel: '${l10n.ocrDate}, ${_selectedDate.year}.${_selectedDate.month.toString().padLeft(2, '0')}.${_selectedDate.day.toString().padLeft(2, '0')}',
                onTap: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: _selectedDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now().add(const Duration(days: 1)),
                    locale: Localizations.localeOf(context),
                  );
                  if (picked != null) {
                    setState(() => _selectedDate = picked);
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: TokenColors.textAccent.withValues(alpha: 0.5),
                    ),
                    borderRadius: BorderRadius.circular(TokenSpacing.sm),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.sm, vertical: TokenSpacing.sm),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          _formatDate(_selectedDate),
                          style: TokenTypography.body(
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.calendar_today,
                        size: 14,
                        color: TokenColors.textAccent,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: TokenSpacing.xs),
          const Icon(
            Icons.edit_calendar,
            size: 16,
            color: TokenColors.textAccent,
          ),
        ],
      ),
    );
  }

  // ─── Merchant field (editable) ───

  Widget _buildMerchantField(ThemeData theme, AppLocalizations l10n) {
    final hasName = _merchantName.isNotEmpty;
    return Padding(
      padding: const EdgeInsets.only(bottom: TokenSpacing.xs),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 60,
            child: Text(l10n.ocrMerchant, style: TokenTypography.caption(
              color: TokenColors.textTertiary,
            )),
          ),
          Expanded(
            child: SizedBox(
              height: 32,
              child: TextFormField(
                initialValue: _merchantName,
                key: ValueKey('merchant_$_merchantName'),
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: TokenSpacing.sm, vertical: TokenSpacing.sm),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(TokenSpacing.sm),
                  ),
                  hintText: l10n.ocrMerchantHint,
                  hintStyle: TokenTypography.caption(
                    color: TokenColors.textTertiary,
                  ),
                ),
                style: TokenTypography.body(
                  color: hasName ? theme.colorScheme.onSurface : TokenColors.error,
                ),
                onChanged: (value) {
                  _merchantName = value;
                },
              ),
            ),
          ),
          const SizedBox(width: TokenSpacing.xs),
          Icon(
            hasName ? Icons.check_circle_outline : Icons.error_outline,
            size: 16,
            color: hasName ? TokenColors.success : TokenColors.error,
          ),
        ],
      ),
    );
  }

  // ─── Amount row (live line items total) ───

  Widget _buildAmountRow(ThemeData theme, AppLocalizations l10n) {
    final total = _lineItemsTotal;
    final hasAmount = total > 0;
    return Padding(
      padding: const EdgeInsets.only(bottom: TokenSpacing.xs),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            child: Text(l10n.ocrAmount, style: TokenTypography.caption(
              color: TokenColors.textTertiary,
            )),
          ),
          Expanded(
            child: Text(
              hasAmount ? Formatters.formatCurrency(total, symbol: '¥') : l10n.ocrUnrecognized,
              style: TokenTypography.body(
                color: hasAmount ? theme.colorScheme.onSurface : TokenColors.error,
              ),
            ),
          ),
          Icon(
            hasAmount ? Icons.check_circle_outline : Icons.error_outline,
            size: 16,
            color: hasAmount ? TokenColors.success : TokenColors.error,
          ),
        ],
      ),
    );
  }

  // ─── Mode toggle ───

  Widget _buildModeToggle(ThemeData theme, AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.ocrEntryMode, style: TokenTypography.caption(
          fontWeight: FontWeight.bold,
          color: TokenColors.textAccent,
        )),
        const SizedBox(height: TokenSpacing.sm),
        SizedBox(
          width: double.infinity,
          child: SegmentedButton<TransactionMode>(
            segments: [
              ButtonSegment(
                value: TransactionMode.single,
                label: Text(l10n.ocrEntryModeWhole),
                icon: const Icon(Icons.receipt),
              ),
              ButtonSegment(
                value: TransactionMode.multiple,
                label: Text(l10n.ocrEntryModeItemized),
                icon: const Icon(Icons.list_alt),
              ),
            ],
            selected: {_mode},
            onSelectionChanged: (selection) {
              setState(() => _mode = selection.first);
            },
          ),
        ),
      ],
    );
  }

  // ─── Editable line items ───

  Widget _buildEditableLineItems(ThemeData theme, AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.ocrLineItems, style: TokenTypography.caption(
          fontWeight: FontWeight.bold,
          color: TokenColors.textAccent,
        )),
        const SizedBox(height: TokenSpacing.sm),
        if (_editedItems.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: TokenSpacing.xl),
            child: Text(l10n.ocrNoLineItems, style: TokenTypography.body(
              color: TokenColors.textTertiary,
            )),
          ),
        for (int i = 0; i < _editedItems.length; i++)
          _buildEditableItemRow(theme, l10n, i),
        TextButton.icon(
          onPressed: _addItem,
          icon: const Icon(Icons.add, size: 18),
          label: Text(l10n.ocrAddItem),
        ),
      ],
    );
  }

  Widget _buildEditableItemRow(ThemeData theme, AppLocalizations l10n, int index) {
    final item = _editedItems[index];
    final isLow = item.isLowConfidence;

    final borderColor = isLow ? TokenColors.primary : TokenColors.textTertiary.withValues(alpha: 0.3);
    final bgColor = isLow ? TokenColors.primary.withValues(alpha: 0.04) : Colors.transparent;

    return Padding(
      padding: const EdgeInsets.only(bottom: TokenSpacing.sm),
      child: Container(
        padding: const EdgeInsets.all(TokenSpacing.sm),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: TokenRadius.borderSm,
          border: isLow ? Border.all(color: borderColor, width: 1.5) : null,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: TextFormField(
                    initialValue: item.name,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(horizontal: TokenSpacing.sm, vertical: TokenSpacing.sm),
                      border: OutlineInputBorder(
                        borderRadius: TokenRadius.borderSm,
                      ),
                      hintText: l10n.ocrProductName,
                    ),
                    style: TokenTypography.body(),
                    onChanged: (value) {
                      _editedItems[index].name = value;
                    },
                  ),
                ),
                const SizedBox(width: TokenSpacing.sm),
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    initialValue: item.price > 0 ? item.price.toStringAsFixed(2) : '',
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(horizontal: TokenSpacing.sm, vertical: TokenSpacing.sm),
                      border: OutlineInputBorder(
                        borderRadius: TokenRadius.borderSm,
                      ),
                      prefixText: '¥ ',
                      prefixStyle: TokenTypography.body(
                        color: TokenColors.textAccent,
                        fontWeight: FontWeight.w600,
                      ),
                      hintText: '0.00',
                    ),
                    style: TokenTypography.body(
                      color: TokenColors.textAccent,
                      fontWeight: FontWeight.w600,
                    ),
                    onChanged: (value) {
                      _editedItems[index].price = double.tryParse(value) ?? 0;
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(width: TokenSpacing.xs),
                IconButton(
                  icon: const Icon(Icons.close, size: 18, color: TokenColors.error),
                  onPressed: () => _removeItem(index),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
                ),
              ],
            ),
            if (isLow)
              Padding(
                padding: const EdgeInsets.only(top: 2, left: TokenSpacing.xs),
                child: Row(
                  children: [
                    const Icon(Icons.info_outline, size: 12, color: TokenColors.primary),
                    const SizedBox(width: TokenSpacing.xs),
                    Text(
                      item.name.trim().isEmpty
                          ? l10n.ocrErrorNameEmpty
                          : item.price <= 0
                              ? l10n.ocrErrorPriceMissing
                              : l10n.ocrErrorNameSuspect,
                      style: TokenTypography.micro(
                        color: TokenColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _addItem() {
    setState(() {
      _editedItems.add(_EditableItem(name: '', price: 0));
    });
  }

  void _removeItem(int index) {
    setState(() {
      _editedItems.removeAt(index);
    });
  }

  // ─── Line items total ───

  Widget _buildLineItemsTotal(ThemeData theme, AppLocalizations l10n) {
    final total = _lineItemsTotal;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.lg, vertical: 10),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
        borderRadius: TokenRadius.borderSm,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(l10n.ocrLineItemsTotal, style: TokenTypography.body(
            fontWeight: FontWeight.w500,
          )),
          Text(Formatters.formatCurrency(total, symbol: '¥'), style: TokenTypography.h4(
            fontWeight: FontWeight.bold,
            color: TokenColors.textAccent,
          )),
        ],
      ),
    );
  }

  // ─── Helpers ───

  Widget _buildBadge(ThemeData theme, String source, Duration time) {
    final color = source == 'local' || source == 'ML Kit' ? TokenColors.info : Colors.purple;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.sm, vertical: TokenSpacing.xs),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: TokenRadius.borderMd,
      ),
      child: Text(
        '$source · ${time.inMilliseconds}ms',
        style: TokenTypography.micro(color: color),
      ),
    );
  }

  Widget _buildSection(ThemeData theme, String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TokenTypography.caption(
          fontWeight: FontWeight.bold,
          color: TokenColors.textAccent,
        )),
        const SizedBox(height: TokenSpacing.sm),
        ...children,
      ],
    );
  }

  Widget _buildFieldRow(ThemeData theme, String label, String value, bool isGood) {
    return Padding(
      padding: const EdgeInsets.only(bottom: TokenSpacing.xs),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            child: Text(label, style: TokenTypography.caption(
              color: TokenColors.textTertiary,
            )),
          ),
          Expanded(
            child: Text(value, style: TokenTypography.body(
              color: isGood ? theme.colorScheme.onSurface : TokenColors.error,
            )),
          ),
          Icon(
            isGood ? Icons.check_circle_outline : Icons.error_outline,
            size: 16,
            color: isGood ? TokenColors.success : TokenColors.error,
          ),
        ],
      ),
    );
  }

  Widget _buildConfidenceBar(ThemeData theme, AppLocalizations l10n, double confidence) {
    final color = confidence >= 70
        ? TokenColors.success
        : confidence >= 40
            ? TokenColors.primary
            : TokenColors.error;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.ocrConfidence, style: TokenTypography.caption(
          color: TokenColors.textTertiary,
        )),
        const SizedBox(height: TokenSpacing.xs),
        ClipRRect(
          borderRadius: BorderRadius.circular(TokenSpacing.xs),
          child: LinearProgressIndicator(
            value: confidence / 100,
            backgroundColor: color.withValues(alpha: 0.2),
            valueColor: AlwaysStoppedAnimation(color),
            minHeight: TokenSpacing.sm,
          ),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }
}

/// Transaction input mode
enum TransactionMode { single, multiple }

/// Result of OCR confirmation
class OcrConfirmResult {
  final TransactionMode mode;
  final List<dynamic> editedLineItems;
  final double totalAmount;
  final String merchant;
  final DateTime selectedDate;

  OcrConfirmResult({
    required this.mode,
    required this.editedLineItems,
    required this.totalAmount,
    required this.merchant,
    DateTime? selectedDate,
  }) : selectedDate = selectedDate ?? DateTime.now();
}
