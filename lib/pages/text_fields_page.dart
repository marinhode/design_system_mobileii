import 'package:flutter/material.dart';
import '../widgets/section_title.dart';
import '../widgets/app_text_field.dart';

class TextFieldsPage extends StatefulWidget {
  const TextFieldsPage({super.key});

  @override
  State<TextFieldsPage> createState() => _TextFieldsPageState();
}

class _TextFieldsPageState extends State<TextFieldsPage> {
  final defaultController = TextEditingController();
  final errorController = TextEditingController(text: 'Invalid input');
  final disabledController = TextEditingController(text: 'Disabled');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Text Fields')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SectionTitle('Default (focus to see active)'),
          AppTextField(
            controller: defaultController,
            hint: 'Enter text',
            onChanged: (v) {},
          ),
          const SizedBox(height: 16),
          const SectionTitle('Error'),
          AppTextField(
            controller: errorController,
            hasError: true,
            onChanged: (v) {},
          ),
          const SizedBox(height: 16),
          const SectionTitle('Disabled'),
          AppTextField(
            controller: disabledController,
            enabled: false,
          ),
        ],
      ),
    );
  }
}
