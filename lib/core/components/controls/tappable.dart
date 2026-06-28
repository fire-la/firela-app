import 'package:flutter/material.dart';

/// Tap target that exposes semantics to assistive tech (VoiceOver/TalkBack).
/// Prefer this over a bare [GestureDetector]/[InkWell] — screen readers
/// announce the element's role + label.
///
/// [excludeSemantics] defaults to true (merges the subtree into one node — use
/// for icon/action buttons). Pass false when the child carries essential text
/// (cards, list rows) so VoiceOver reads the child text alongside the label.
///
/// MANDATORY: the CI gate (.github/workflows/a11y-gate.yml) blocks new bare
/// GestureDetector/InkWell/InkResponse/RawGestureDetector outside
/// lib/core/components/. Use this instead. See IGN-294.
class Tappable extends StatelessWidget {
  final VoidCallback? onTap;
  final String semanticLabel;
  final String? semanticHint;
  final bool excludeSemantics;
  /// When true, the pointer gesture fires on pointer-down (onTapDown) instead
  /// of pointer-up (onTap) — for targets that must act before a sibling's
  /// blur unmounts them (e.g. tag suggestion rows in transaction_detail_edit).
  /// Screen readers still activate via the Semantics onTap (double-tap).
  /// Default false.
  final bool activateOnPress;
  /// Conveys state to assistive tech. Null = don't set (state not applicable).
  /// Maps to Semantics selected/checked/expanded. Use for radio rows (selected),
  /// checkbox rows (checked), expand toggles (expanded). See IGN-300.
  final bool? selected;
  final bool? checked;
  final bool? expanded;
  final Widget child;

  const Tappable({
    super.key,
    required this.onTap,
    required this.semanticLabel,
    this.semanticHint,
    this.excludeSemantics = true,
    this.activateOnPress = false,
    this.selected,
    this.checked,
    this.expanded,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    assert(
      semanticLabel.isNotEmpty,
      'Tappable.semanticLabel must be non-empty — empty yields a nameless '
      'button and defeats IGN-294.',
    );
    // onTap is passed to BOTH Semantics (VoiceOver/TalkBack activation) and
    // GestureDetector (pointer tap). excludeSemantics would otherwise mask the
    // GestureDetector's implicit tap action, leaving screen-reader double-tap
    // unable to fire the callback. See IGN-294.
    return Semantics(
      button: true,
      onTap: onTap,
      label: semanticLabel,
      hint: semanticHint,
      enabled: onTap != null,
      selected: selected,
      checked: checked,
      expanded: expanded,
      container: true,
      excludeSemantics: excludeSemantics,
      child: GestureDetector(
        // activateOnPress fires on pointer-down so the callback runs before a
        // sibling blur can unmount this widget. Screen readers still activate
        // via the Semantics onTap above (double-tap). See IGN-294.
        onTap: activateOnPress ? null : onTap,
        onTapDown: activateOnPress ? ((_) => onTap?.call()) : null,
        behavior: HitTestBehavior.opaque,
        child: child,
      ),
    );
  }
}
