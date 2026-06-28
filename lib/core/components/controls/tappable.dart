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
  final Widget child;

  const Tappable({
    super.key,
    required this.onTap,
    required this.semanticLabel,
    this.semanticHint,
    this.excludeSemantics = true,
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
      container: true,
      excludeSemantics: excludeSemantics,
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: child,
      ),
    );
  }
}
