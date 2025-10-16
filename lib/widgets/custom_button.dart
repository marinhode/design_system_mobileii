import 'package:flutter/material.dart';

enum ButtonVariant { filled, outlined, ghost }

class CustomButton extends StatelessWidget {
  final String label;
  final ButtonVariant variant;
  final bool isHovered;
  final bool isDisabled;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.label,
    this.variant = ButtonVariant.filled,
    this.isHovered = false,
    this.isDisabled = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveOnPressed = onPressed ?? () {};

    Color bgColor;
    Color textColor;
    BorderSide border = BorderSide.none;

    switch (variant) {
      case ButtonVariant.filled:
        textColor = Colors.white;
        if (isDisabled) {
          bgColor = const Color(0xFFF2F2F2);
          textColor = Colors.grey[600]!;
        } else if (isHovered) {
          bgColor = const Color(0xFF0659AC);
        } else {
          bgColor = const Color(0xFF0873DE);
        }
        break;

      case ButtonVariant.outlined:
        textColor = isDisabled ? Colors.grey[600]! : const Color(0xFF0873DE);
        border = BorderSide(
          color: isDisabled ? Colors.grey[600]! : const Color(0xFF0873DE),
          width: 1.5,
        );
        bgColor = isHovered ? const Color(0xFFE6F2FE) : Colors.transparent;
        break;

      case ButtonVariant.ghost:
        textColor = isDisabled ? Colors.grey[600]! : const Color(0xFF0873DE);
        bgColor = isHovered ? const Color(0xFFE6F2FE) : Colors.transparent;
        break;
    }

    return ElevatedButton(
      onPressed: effectiveOnPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        foregroundColor: textColor,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: border,
        ),
        elevation: (variant == ButtonVariant.filled) ? 2 : 0, // sombra só no filled
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label, style: const TextStyle(fontSize: 16)),
          const SizedBox(width: 8),
          Icon(Icons.arrow_forward, size: 20, color: textColor),
        ],
      ),
    );
  }
}
