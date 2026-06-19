import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class DesignToast {
  DesignToast._();

  static void show(BuildContext context, {
    required String message,
    required IconData icon,
    Duration duration = const Duration(seconds: 2),
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Container(
          height: 44,
          decoration: BoxDecoration(
            color: TokenColors.bgToast,
            borderRadius: BorderRadius.circular(TokenRadius.pill),
          ),
          padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xxl),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 18, color: TokenColors.white),
              const SizedBox(width: TokenSpacing.sm),
              Flexible(
                child: Text(
                  message,
                  style: TokenTypography.body(color: TokenColors.white),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        duration: duration,
      ),
    );
  }
}
