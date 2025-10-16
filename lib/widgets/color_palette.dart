import 'package:flutter/material.dart';

class ColorPalette extends StatelessWidget {
  final String name;
  final List<Color> colors;

  const ColorPalette(this.name, this.colors, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: colors
              .map((color) => Expanded(
                    child: Container(height: 60, color: color),
                  ))
              .toList(),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}