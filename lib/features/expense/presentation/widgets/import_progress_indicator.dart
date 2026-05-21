import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/design_tokens/design_tokens.dart';

/// Enum representing the import progress steps
enum ImportStep {
  idle,
  uploading,
  parsing,
  categorizing,
  reviewing,
  complete,
  error,
}

/// Extension to get display labels for steps
extension ImportStepExtension on ImportStep {
  String label(AppLocalizations l10n) {
    switch (this) {
      case ImportStep.idle:
        return l10n.importProgressIdle;
      case ImportStep.uploading:
        return l10n.importProgressUploading;
      case ImportStep.parsing:
        return l10n.importProgressParsing;
      case ImportStep.categorizing:
        return l10n.importProgressCategorizing;
      case ImportStep.reviewing:
        return l10n.importProgressReviewing;
      case ImportStep.complete:
        return l10n.importProgressComplete;
      case ImportStep.error:
        return l10n.importProgressError;
    }
  }

  int get stepIndex {
    switch (this) {
      case ImportStep.idle:
        return 0;
      case ImportStep.uploading:
        return 1;
      case ImportStep.parsing:
        return 2;
      case ImportStep.categorizing:
        return 3;
      case ImportStep.reviewing:
        return 4;
      case ImportStep.complete:
        return 5;
      case ImportStep.error:
        return -1;
    }
  }

  bool get isActive => this != ImportStep.idle && this != ImportStep.error;
}

/// A reusable stepped progress indicator for bill import flow
/// Shows current step with animated progress, percentage, and item count
class ImportProgressIndicator extends StatefulWidget {
  const ImportProgressIndicator({
    super.key,
    required this.currentStep,
    this.progress = 0.0,
    this.itemCount,
    this.processedCount,
  });

  final ImportStep currentStep;
  final double progress;
  final int? itemCount;
  final int? processedCount;

  @override
  State<ImportProgressIndicator> createState() => _ImportProgressIndicatorState();
}

class _ImportProgressIndicatorState extends State<ImportProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _progressAnimation;
  double _previousProgress = 0.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _progressAnimation = Tween<double>(
      begin: 0.0,
      end: widget.progress,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    _animationController.forward();
    _previousProgress = widget.progress;
  }

  @override
  void didUpdateWidget(ImportProgressIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.progress != widget.progress) {
      _progressAnimation = Tween<double>(
        begin: _previousProgress,
        end: widget.progress,
      ).animate(CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ));
      _animationController.forward(from: 0.0);
      _previousProgress = widget.progress;
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Step indicators row
        _buildStepIndicators(context, l10n, theme),

        const SizedBox(height: TokenSpacing.xl),

        // Current step label with progress
        _buildCurrentStepLabel(context, l10n, theme),

        const SizedBox(height: TokenSpacing.sm),

        // Animated progress bar
        _buildProgressBar(context, theme),

        const SizedBox(height: TokenSpacing.sm),

        // Progress details (percentage and item count)
        _buildProgressDetails(context, l10n, theme),
      ],
    );
  }

  Widget _buildStepIndicators(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
  ) {
    final steps = [
      ImportStep.uploading,
      ImportStep.parsing,
      ImportStep.categorizing,
      ImportStep.reviewing,
    ];

    return Row(
      children: [
        for (int i = 0; i < steps.length; i++) ...[
          Expanded(
            child: _StepDot(
              step: steps[i],
              currentStep: widget.currentStep,
              label: steps[i].label(l10n),
            ),
          ),
          if (i < steps.length - 1)
            _StepConnector(
              isActive: steps[i].stepIndex < widget.currentStep.stepIndex,
            ),
        ],
      ],
    );
  }

  Widget _buildCurrentStepLabel(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
  ) {
    final isError = widget.currentStep == ImportStep.error;
    final isComplete = widget.currentStep == ImportStep.complete;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: Icon(
            isError
                ? Icons.error_outline
                : isComplete
                    ? Icons.check_circle_outline
                    : Icons.sync,
            key: ValueKey(widget.currentStep),
            size: 20,
            color: isError
                ? TokenColors.error
                : isComplete
                    ? TokenColors.success
                    : TokenColors.textAccent,
          ),
        ),
        const SizedBox(width: TokenSpacing.sm),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: Text(
            widget.currentStep.label(l10n),
            key: ValueKey(widget.currentStep),
            style: TokenTypography.h4(
              fontWeight: FontWeight.w600,
              color: isError
                  ? TokenColors.error
                  : isComplete
                      ? TokenColors.success
                      : theme.colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProgressBar(BuildContext context, ThemeData theme) {
    return AnimatedBuilder(
      animation: _progressAnimation,
      builder: (context, child) {
        final displayProgress = _progressAnimation.value.clamp(0.0, 1.0);
        final isError = widget.currentStep == ImportStep.error;
        final isComplete = widget.currentStep == ImportStep.complete;

        return Container(
          height: TokenSpacing.sm,
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(3),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: isError ? 1.0 : (isComplete ? 1.0 : displayProgress),
            child: Container(
              decoration: BoxDecoration(
                color: isError
                    ? TokenColors.error
                    : isComplete
                        ? TokenColors.success
                        : TokenColors.textAccent,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildProgressDetails(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
  ) {
    final isComplete = widget.currentStep == ImportStep.complete;
    final isError = widget.currentStep == ImportStep.error;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Percentage
        AnimatedBuilder(
          animation: _progressAnimation,
          builder: (context, child) {
            final percentage = (_progressAnimation.value * 100).toInt();
            return Text(
              '$percentage%',
              style: TokenTypography.caption(
                color: TokenColors.textTertiary,
              ),
            );
          },
        ),
        // Item count
        if (widget.itemCount != null && widget.processedCount != null)
          Text(
            '${widget.processedCount}/${widget.itemCount} ${l10n.items}',
            style: TokenTypography.caption(
              color: TokenColors.textTertiary,
            ),
          )
        else if (isComplete && widget.itemCount != null)
          Text(
            '${widget.itemCount} ${l10n.items}',
            style: TokenTypography.caption(
              color: TokenColors.success,
            ),
          )
        else if (isError)
          Text(
            l10n.importErrorRetry,
            style: TokenTypography.caption(
              color: TokenColors.error,
            ),
          ),
      ],
    );
  }
}

/// Individual step dot indicator
class _StepDot extends StatelessWidget {
  const _StepDot({
    required this.step,
    required this.currentStep,
    required this.label,
  });

  final ImportStep step;
  final ImportStep currentStep;
  final String label;

  bool get _isCompleted => step.stepIndex < currentStep.stepIndex;
  bool get _isCurrent => step == currentStep;
  bool get _isError => currentStep == ImportStep.error;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: _isError && _isCurrent
                ? TokenColors.error
                : _isCompleted || _isCurrent
                    ? TokenColors.textAccent
                    : theme.colorScheme.surfaceContainerHighest,
            shape: BoxShape.circle,
            border: _isCurrent
                ? Border.all(
                    color: TokenColors.textAccent,
                    width: 2,
                  )
                : null,
          ),
          child: Center(
            child: _isCompleted
                ? const Icon(
                    Icons.check,
                    color: TokenColors.white,
                    size: 16,
                  )
                : Text(
                    step.stepIndex.toString(),
                    style: TokenTypography.caption(
                      color: _isCurrent ? TokenColors.textAccent : TokenColors.textTertiary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        ),
        const SizedBox(height: TokenSpacing.xs),
        Text(
          label,
          style: TokenTypography.micro(
            color: _isCurrent
                ? theme.colorScheme.onSurface
                : TokenColors.textTertiary,
            fontWeight: _isCurrent ? FontWeight.w600 : FontWeight.normal,
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

/// Connector line between steps
class _StepConnector extends StatelessWidget {
  const _StepConnector({required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 24,
      height: 2,
      decoration: BoxDecoration(
        color: isActive
            ? TokenColors.textAccent
            : theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(1),
      ),
    );
  }
}

/// Animated builder wrapper for the progress animation
class AnimatedBuilder extends AnimatedWidget {
  const AnimatedBuilder({
    super.key,
    required Animation<double> animation,
    required this.builder,
  }) : super(listenable: animation);

  final Widget Function(BuildContext context, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    return builder(context, null);
  }
}
