import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';

/// Expense entry bottom sheet with AI/Manual toggle
/// 键盘弹出时内容自动上移（通过父级 showModalBottomSheet 的 isScrollControlled: true 实现）
class ExpenseEntryBottomSheet extends StatefulWidget {
  const ExpenseEntryBottomSheet({
    super.key,
    this.onPhotoRecognition,
    this.onBillImport,
    this.onSubmit,
  });

  final VoidCallback? onPhotoRecognition;
  final VoidCallback? onBillImport;
  final Function(String text)? onSubmit;

  @override
  State<ExpenseEntryBottomSheet> createState() => _ExpenseEntryBottomSheetState();
}

class _ExpenseEntryBottomSheetState extends State<ExpenseEntryBottomSheet> {
  final _textController = TextEditingController();
  final _focusNode = FocusNode();
  bool _isAiMode = true;

  @override
  void initState() {
    super.initState();
    _textController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _textController.removeListener(_onTextChanged);
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      // Trigger rebuild to update submit button color
    });
  }

  bool get _hasText => _textController.text.trim().isNotEmpty;

  void _showKeyboard() {
    _focusNode.requestFocus();
    // 延迟一帧后强制显示键盘
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_focusNode.hasFocus) {
        SystemChannels.textInput.invokeMethod('TextInput.show');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 拖拽指示器
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 8),
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: theme.colorScheme.outline.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),

            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Mode toggle
                  GestureDetector(
                    onTap: () => setState(() => _isAiMode = !_isAiMode),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Text(
                            l10n.aiAccounting,
                            style: TextStyle(
                              color: _isAiMode
                                  ? theme.colorScheme.onSurface
                                  : theme.colorScheme.outline,
                              fontWeight: _isAiMode
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                            ),
                          ),
                          Text(
                            ' | ',
                            style: TextStyle(
                              color: theme.colorScheme.outline,
                            ),
                          ),
                          Text(
                            l10n.manualAccounting,
                            style: TextStyle(
                              color: !_isAiMode
                                  ? theme.colorScheme.onSurface
                                  : theme.colorScheme.outline,
                              fontWeight: !_isAiMode
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Close button
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),

            // Input field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: _textController,
                focusNode: _focusNode,
                onTap: _showKeyboard,
                decoration: InputDecoration(
                  hintText: _isAiMode
                      ? '描述您的支出，如：午餐花了35元'
                      : l10n.enterExpenseDescription,
                  hintStyle: TextStyle(
                    color: theme.colorScheme.outline,
                  ),
                  filled: true,
                  fillColor: theme.colorScheme.surface,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // Design: 12px
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.all(16),
                ),
                maxLines: 3,
                style: theme.textTheme.bodyLarge,
                textInputAction: TextInputAction.send,
                onSubmitted: (value) {
                  if (value.trim().isNotEmpty) {
                    widget.onSubmit?.call(value.trim());
                  }
                },
              ),
            ),

            const SizedBox(height: 16),

            // Action buttons + Submit button 同行
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Row(
                children: [
                  _ActionButton(
                    icon: Icons.camera_alt_outlined,
                    label: l10n.photoRecognition,
                    onTap: () {
                      widget.onPhotoRecognition?.call();
                    },
                  ),
                  const SizedBox(width: 12),
                  _ActionButton(
                    icon: Icons.insert_drive_file_outlined,
                    label: l10n.billImport,
                    onTap: () {
                      Navigator.of(context).pop();
                      widget.onBillImport?.call();
                    },
                  ),
                  const Spacer(),
                  // 确认对勾按钮 - 右侧（与操作按钮同高）
                  GestureDetector(
                          onTap: () {
                            if (_textController.text.trim().isNotEmpty) {
                              widget.onSubmit?.call(_textController.text.trim());
                            }
                          },
                          child: Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: _hasText
                                  ? const Color(0xFF000000)
                                  : const Color(0xFFBDBDBD),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.check,
                              color: Color(0xFFFFFFFF),
                              size: 20,
                            ),
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
}

/// Action button widget
class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: theme.colorScheme.outline.withValues(alpha: 0.2),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 16,
              color: theme.colorScheme.onSurface,
            ),
            const SizedBox(width: 6),
            Text(
              label,
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
