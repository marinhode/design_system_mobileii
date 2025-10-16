import 'package:flutter/material.dart';

class AppToggle extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final Widget? title;
  final bool enabled;

  const AppToggle({
    super.key,
    required this.value,
    this.onChanged,
    this.title,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    Color trackColor;
    Color thumbColor = Colors.white; // bolinha sempre branca

    if (!enabled) {
      trackColor = const Color(0xFFA6A6A6); // disabled
    } else {
      trackColor = value ? const Color(0xFF0873DE) : const Color(0xFF737373); // ativo/default
    }

    return SwitchListTile(
      title: title,
      value: value,
      onChanged: enabled ? onChanged : null,
      activeColor: thumbColor,
      inactiveThumbColor: thumbColor,
      activeTrackColor: trackColor,
      inactiveTrackColor: trackColor,
      contentPadding: EdgeInsets.zero,
    );
  }
}
