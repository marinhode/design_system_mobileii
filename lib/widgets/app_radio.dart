import 'package:flutter/material.dart';

class AppRadio<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T>? onChanged;
  final String label;
  final bool enabled;

  const AppRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.label,
    this.onChanged,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    bool selected = value == groupValue;

    Color borderColor = selected ? Color(0xFF0873DE) : Color(0xFF0873DE);
    Color fillColor = selected ? Color(0xFF0873DE) : Colors.transparent;

    return InkWell(
      onTap: enabled ? () => onChanged?.call(value) : null,
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: enabled ? borderColor : Color(0xFFA6A6A6),
                width: 2,
              ),
            ),
            child: Center(
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: enabled ? fillColor : Color(0xFFA6A6A6),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            label,
            style: TextStyle(
              color: enabled ? Colors.black : Color(0xFFA6A6A6),
            ),
          ),
        ],
      ),
    );
  }
}
