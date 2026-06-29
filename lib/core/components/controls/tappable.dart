import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../design_tokens/design_tokens.dart';

/// Tap target that exposes semantics to assistive tech (VoiceOver/TalkBack) and
/// a visible keyboard focus ring. Prefer this over a bare
/// [GestureDetector]/[InkWell] — screen readers announce the element's role +
/// label, and keyboard users see where focus is (WCAG 2.4.7 / 2.4.11).
///
/// [excludeSemantics] defaults to true (merges the subtree into one node — use
/// for icon/action buttons). Pass false when the child carries essential text
/// (cards, list rows) so VoiceOver reads the child text alongside the label.
///
/// Focus: the target is keyboard-focusable when [focusable] (default) and
/// [onTap] is set. A 2px ring ([TokenColors.focus]) is drawn while the target
/// holds primary focus (keyboard Tab / programmatic). Enter / Space activate
/// it. See IGN-303.
///
/// MANDATORY: the CI gate (.github/workflows/a11y-gate.yml) blocks new bare
/// GestureDetector/InkWell/InkResponse/RawGestureDetector outside
/// lib/core/components/. Use this instead. See IGN-294.
class Tappable extends StatefulWidget {
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

  /// External focus node. When omitted, an internal node is created. Pass one
  /// to drive focus programmatically (autoFocus, move focus on submit, tests).
  final FocusNode? focusNode;

  /// Whether the target is reachable via keyboard Tab traversal. Default true.
  /// A disabled target ([onTap] == null) is never focusable regardless.
  final bool focusable;

  /// Corner radius of the focus ring, matched to the child's shape. Default
  /// [TokenRadius.sm].
  final double focusRadius;
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
    this.focusNode,
    this.focusable = true,
    this.focusRadius = TokenRadius.sm,
    required this.child,
  });

  @override
  State<Tappable> createState() => _TappableState();
}

class _TappableState extends State<Tappable> {
  FocusNode? _createdNode;
  FocusNode get _node => widget.focusNode ?? (_createdNode ??= FocusNode());

  @override
  void dispose() {
    _createdNode?.dispose();
    super.dispose();
  }

  // Keyboard activation: Enter / Space / Numpad Enter fire onTap, mirroring the
  // screen-reader double-tap path. A focusable button that can't be activated
  // by keyboard would fail WCAG 2.1.1. See IGN-303.
  KeyEventResult _onKeyEvent(FocusNode node, KeyEvent event) {
    if (widget.onTap != null && event is KeyDownEvent) {
      final key = event.logicalKey;
      if (key == LogicalKeyboardKey.enter ||
          key == LogicalKeyboardKey.numpadEnter ||
          key == LogicalKeyboardKey.space) {
        widget.onTap!();
        return KeyEventResult.handled;
      }
    }
    return KeyEventResult.ignored;
  }

  @override
  Widget build(BuildContext context) {
    assert(
      widget.semanticLabel.isNotEmpty,
      'Tappable.semanticLabel must be non-empty — empty yields a nameless '
      'button and defeats IGN-294.',
    );
    // onTap is passed to BOTH Semantics (VoiceOver/TalkBack activation) and
    // GestureDetector (pointer tap). excludeSemantics would otherwise mask the
    // GestureDetector's implicit tap action, leaving screen-reader double-tap
    // unable to fire the callback. See IGN-294.
    final gesture = GestureDetector(
      // activateOnPress fires on pointer-down so the callback runs before a
      // sibling blur can unmount this widget. Screen readers still activate
      // via the Semantics onTap above (double-tap). See IGN-294.
      onTap: widget.activateOnPress ? null : widget.onTap,
      onTapDown: widget.activateOnPress ? ((_) => widget.onTap?.call()) : null,
      behavior: HitTestBehavior.opaque,
      child: widget.child,
    );
    final canFocus = widget.focusable && widget.onTap != null;
    return Semantics(
      button: true,
      onTap: widget.onTap,
      label: widget.semanticLabel,
      hint: widget.semanticHint,
      enabled: widget.onTap != null,
      selected: widget.selected,
      checked: widget.checked,
      expanded: widget.expanded,
      container: true,
      excludeSemantics: widget.excludeSemantics,
      child: Focus(
        focusNode: _node,
        canRequestFocus: canFocus,
        onKeyEvent: _onKeyEvent,
        child: canFocus
            ? _FocusRing(
                focusNode: _node,
                radius: widget.focusRadius,
                child: gesture,
              )
            : gesture,
      ),
    );
  }
}

/// Draws the focus ring as a foreground overlay (zero layout shift) only while
/// the Tappable holds *primary* focus. A touch tap never focuses a Tappable
/// (its pointer path is a GestureDetector, not a focusable), so the ring only
/// appears for keyboard Tab / programmatic focus — no touch flash. Keys off
/// [FocusNode.hasPrimaryFocus] so a focused descendant (e.g. a nested field)
/// doesn't bleed a second ring. See IGN-303.
class _FocusRing extends StatelessWidget {
  const _FocusRing({
    required this.focusNode,
    required this.radius,
    required this.child,
  });

  final FocusNode focusNode;
  final double radius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: focusNode,
      builder: (context, _) {
        if (!focusNode.hasPrimaryFocus) return child;
        return CustomPaint(
          foregroundPainter: _FocusRingPainter(
            color: TokenColors.focus,
            width: TokenSize.strokeFocus,
            radius: radius,
          ),
          child: child,
        );
      },
    );
  }
}

class _FocusRingPainter extends CustomPainter {
  const _FocusRingPainter({
    required this.color,
    required this.width,
    required this.radius,
  });

  final Color color;
  final double width;
  final double radius;

  @override
  void paint(Canvas canvas, Size size) {
    // Inset by half the stroke so the whole ring stays inside the bounding box
    // (never overflows / never clipped by an ancestor) while still hugging the
    // outer edge.
    final half = width / 2;
    final rect = Rect.fromLTWH(
      half,
      half,
      size.width - width,
      size.height - width,
    );
    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(radius));
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = width
      ..strokeJoin = StrokeJoin.round;
    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(_FocusRingPainter old) =>
      old.color != color || old.width != width || old.radius != radius;
}
