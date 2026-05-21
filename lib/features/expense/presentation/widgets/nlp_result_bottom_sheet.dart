import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../core/design_tokens/design_tokens.dart';

/// NLP 记账结果弹窗
/// 参考 IGN 项目 uv-i-nlp-form-popup 组件
/// 支持三种模式：
/// - success: 高置信度，直接成功
/// - confirm: 低置信度，需要确认
/// - ask: 缺少字段，需要补充
class NlpResultBottomSheet extends HookWidget {
  const NlpResultBottomSheet({
    super.key,
    required this.mode,
    required this.parsedData,
    this.message,
    this.waitingFor,
    this.intent = 'expense',
    this.onConfirm,
    this.onCancel,
  });

  /// 模式: 'success' | 'confirm' | 'ask'
  final String mode;

  /// NLP 解析的数据
  final Map<String, dynamic> parsedData;

  /// 提示信息
  final String? message;

  /// 等待用户补充的字段
  final String? waitingFor;

  /// 意图: 'expense' | 'income' | 'asset'
  final String intent;

  /// 确认回调
  final Function(Map<String, dynamic> data)? onConfirm;

  /// 取消回调
  final VoidCallback? onCancel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // success 模式直接显示成功
    if (mode == 'success') {
      return _buildSuccessView(context, theme);
    }

    // ask 模式使用输入框
    final askController = mode == 'ask' ? useTextEditingController() : null;

    // 生成 waitingFor 的友好提示
    String askHint = '请输入补充信息';
    String askLabel = '补充信息';
    if (waitingFor != null) {
      switch (waitingFor) {
        case 'amount': askHint = '请输入金额，如：188'; askLabel = '金额'; break;
        case 'payee': askHint = '请输入对象，如：超市'; askLabel = '对象'; break;
        case 'date': askHint = '请输入日期，如：今天'; askLabel = '日期'; break;
        case 'category': askHint = '请输入分类，如：餐饮'; askLabel = '分类'; break;
        case 'narration': askHint = '请输入备注'; askLabel = '备注'; break;
        default: askHint = '请输入$waitingFor'; askLabel = waitingFor!; break;
      }
    }

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(TokenSpacing.xl)),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 拖拽指示器
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: TokenSpacing.sm),
                  width: 40,
                  height: TokenSpacing.xs,
                  decoration: BoxDecoration(
                    color: TokenColors.textTertiary.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),

              // 提示消息
              if (message != null && message!.isNotEmpty && !message!.contains('类似交易'))
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl, vertical: TokenSpacing.lg),
                  decoration: BoxDecoration(
                    color: TokenColors.primary.withValues(alpha: 0.1),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.auto_awesome, size: 20, color: TokenColors.primary),
                      const SizedBox(width: TokenSpacing.sm),
                      Expanded(
                        child: Text(
                          message!,
                          style: TokenTypography.body(
                            color: TokenColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              // 重复交易提示
              if (message != null && message!.contains('类似交易'))
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(TokenSpacing.xl),
                  padding: const EdgeInsets.all(TokenSpacing.lg),
                  decoration: BoxDecoration(
                    color: TokenColors.primary.withValues(alpha: 0.1),
                    borderRadius: TokenRadius.borderMd,
                    border: Border.all(color: TokenColors.primary.withValues(alpha: 0.3)),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.warning_amber, size: 20, color: TokenColors.primary),
                      const SizedBox(width: TokenSpacing.sm),
                      Expanded(
                        child: Text(
                          message!,
                          style: TokenTypography.caption(
                            color: TokenColors.primary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              // Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl, vertical: TokenSpacing.lg),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(TokenSpacing.sm),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.surface,
                            borderRadius: TokenRadius.borderMd,
                          ),
                          child: const Icon(Icons.auto_awesome, size: 20),
                        ),
                        const SizedBox(width: TokenSpacing.sm),
                        Text(
                          mode == 'ask' ? '请补充信息' : 'AI 解析结果',
                          style: TokenTypography.h4(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        onCancel?.call();
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),

              // 解析结果字段展示
              _buildParsedFields(context, theme),

              // ask 模式：显示输入框让用户补充缺失字段
              if (mode == 'ask' && askController != null)
                Padding(
                  padding: const EdgeInsets.fromLTRB(TokenSpacing.xl, TokenSpacing.sm, TokenSpacing.xl, 0),
                  child: TextField(
                    controller: askController,
                    decoration: InputDecoration(
                      labelText: askLabel,
                      hintText: askHint,
                      border: const OutlineInputBorder(),
                      filled: true,
                      fillColor: theme.colorScheme.surface,
                    ),
                    autofocus: true,
                    onSubmitted: (value) {
                      if (value.trim().isNotEmpty) {
                        // 将用户输入作为补充信息回调
                        final updatedData = Map<String, dynamic>.from(parsedData);
                        updatedData['_userInput'] = value.trim();
                        onConfirm?.call(updatedData);
                        Navigator.of(context).pop();
                      }
                    },
                  ),
                ),

              const SizedBox(height: 24),

              // 操作按钮
              Padding(
                padding: const EdgeInsets.fromLTRB(TokenSpacing.xl, 0, TokenSpacing.xl, TokenSpacing.xl),
                child: SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      if (mode == 'ask' && askController != null) {
                        final input = askController.text.trim();
                        if (input.isEmpty) return; // 不允许空提交
                        final updatedData = Map<String, dynamic>.from(parsedData);
                        updatedData['_userInput'] = input;
                        onConfirm?.call(updatedData);
                      } else {
                        onConfirm?.call(parsedData);
                      }
                      Navigator.of(context).pop();
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: TokenColors.textPrimary,
                      foregroundColor: TokenColors.white,
                      padding: const EdgeInsets.symmetric(vertical: TokenSpacing.xl),
                      shape: RoundedRectangleBorder(
                        borderRadius: TokenRadius.borderMd,
                      ),
                    ),
                    child: Text(mode == 'ask' ? '提交' : '确认记账'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildParsedFields(BuildContext context, ThemeData theme) {
    final fields = <Widget>[];

    // 日期
    if (parsedData['date'] != null) {
      fields.add(_buildFieldRow(theme, '日期', parsedData['date'].toString()));
    }

    // 收款方/付款方
    if (parsedData['payee'] != null) {
      fields.add(_buildFieldRow(theme, '对象', parsedData['payee'].toString()));
    }

    // 分类
    if (parsedData['category'] != null) {
      fields.add(_buildFieldRow(theme, '分类', parsedData['category'].toString()));
    }

    // 金额
    if (parsedData['amount'] != null) {
      fields.add(_buildFieldRow(
        theme,
        '金额',
        '¥${parsedData['amount']}',
        isHighlight: true,
      ));
    }

    // 备注
    if (parsedData['narration'] != null) {
      fields.add(_buildFieldRow(theme, '备注', parsedData['narration'].toString()));
    }

    // 账户
    if (parsedData['account'] != null) {
      fields.add(_buildFieldRow(theme, '账户', parsedData['account'].toString()));
    }

    if (fields.isEmpty) {
      fields.add(Padding(
        padding: const EdgeInsets.all(TokenSpacing.xl),
        child: Text(
          '暂无解析数据',
          style: TokenTypography.body(
            color: TokenColors.textTertiary,
          ),
        ),
      ));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
      child: Column(children: fields),
    );
  }

  Widget _buildFieldRow(ThemeData theme, String label, String value, {bool isHighlight = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl, vertical: 14),
      margin: const EdgeInsets.only(bottom: TokenSpacing.sm),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: TokenRadius.borderMd,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TokenTypography.caption(
              color: TokenColors.textTertiary,
            ),
          ),
          Text(
            value,
            style: isHighlight
                ? TokenTypography.h3(
                    fontWeight: isHighlight ? FontWeight.bold : FontWeight.normal,
                  )
                : TokenTypography.body(
                    fontWeight: isHighlight ? FontWeight.bold : FontWeight.normal,
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuccessView(BuildContext context, ThemeData theme) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(TokenSpacing.xl)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 32),
          const Icon(Icons.check_circle, size: 64, color: TokenColors.success),
          const SizedBox(height: TokenSpacing.xl),
          Text(
            '记账成功',
            style: TokenTypography.h4(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: TokenSpacing.sm),

          // 展示记账详情
          if (parsedData['amount'] != null)
            Text(
              '¥${parsedData['amount']}',
              style: TokenTypography.h3(
                fontWeight: FontWeight.w500,
              ),
            ),

          if (parsedData['payee'] != null || parsedData['category'] != null)
            Padding(
              padding: const EdgeInsets.only(top: TokenSpacing.xs),
              child: Text(
                [parsedData['payee'], parsedData['category']]
                    .where((e) => e != null)
                    .join(' · '),
                style: TokenTypography.body(
                  color: TokenColors.textTertiary,
                ),
              ),
            ),

          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.fromLTRB(TokenSpacing.xl, 0, TokenSpacing.xl, TokenSpacing.xl),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  onConfirm?.call(parsedData);
                  Navigator.of(context).pop();
                },
                style: FilledButton.styleFrom(
                  backgroundColor: TokenColors.textPrimary,
                  foregroundColor: TokenColors.white,
                  padding: const EdgeInsets.symmetric(vertical: TokenSpacing.xl),
                  shape: RoundedRectangleBorder(
                    borderRadius: TokenRadius.borderMd,
                  ),
                ),
                child: const Text('完成'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
