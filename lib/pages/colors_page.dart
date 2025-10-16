import 'package:flutter/material.dart';
import '../widgets/color_palette.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Colors')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ColorPalette('Primary', [
            Color(0xFFE3F2FD), Color(0xFFBBDEFB), Color(0xFF90CAF9), Color(0xFF64B5F6),
            Color(0xFF42A5F5), Color(0xFF2196F3), Color(0xFF1E88E5), Color(0xFF1976D2),
            Color(0xFF1565C0), Color(0xFF0D47A1),
          ]),
          ColorPalette('Success', [
            Color(0xFFE8F5E9), Color(0xFFC8E6C9), Color(0xFFA5D6A7), Color(0xFF81C784),
            Color(0xFF66BB6A), Color(0xFF4CAF50), Color(0xFF43A047), Color(0xFF388E3C),
            Color(0xFF2E7D32), Color(0xFF1B5E20),
          ]),
          ColorPalette('Danger', [
            Color(0xFFFFEBEE), Color(0xFFFFCDD2), Color(0xFFEF9A9A), Color(0xFFE57373),
            Color(0xFFEF5350), Color(0xFFF44336), Color(0xFFE53935), Color(0xFFD32F2F),
            Color(0xFFC62828), Color(0xFFB71C1C),
          ]),
          ColorPalette('Warning', [
            Color(0xFFFFF3E0), Color(0xFFFFE0B2), Color(0xFFFFCC80), Color(0xFFFFB74D),
            Color(0xFFFFA726), Color(0xFFFF9800), Color(0xFFFB8C00), Color(0xFFF57C00),
            Color(0xFFEF6C00), Color(0xFFE65100),
          ]),
          ColorPalette('Grey', [
            Color(0xFFFAFAFA), Color(0xFFF5F5F5), Color(0xFFEEEEEE), Color(0xFFE0E0E0),
            Color(0xFFBDBDBD), Color(0xFF9E9E9E), Color(0xFF757575), Color(0xFF616161),
            Color(0xFF424242), Color(0xFF212121),
          ]),
        ],
      ),
    );
  }
}