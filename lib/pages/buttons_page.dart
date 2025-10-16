import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/section_title.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Buttons')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SectionTitle('Filled Buttons'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CustomButton(label: 'Default', variant: ButtonVariant.filled),
              CustomButton(label: 'Hovered', variant: ButtonVariant.filled, isHovered: true),
              CustomButton(label: 'Disabled', variant: ButtonVariant.filled, isDisabled: true),
            ],
          ),
          const SizedBox(height: 32),
          const SectionTitle('Outlined Buttons'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CustomButton(label: 'Default', variant: ButtonVariant.outlined),
              CustomButton(label: 'Hovered', variant: ButtonVariant.outlined, isHovered: true),
              CustomButton(label: 'Disabled', variant: ButtonVariant.outlined, isDisabled: true),
            ],
          ),
          const SizedBox(height: 32),
          const SectionTitle('Ghost Buttons'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CustomButton(label: 'Default', variant: ButtonVariant.ghost),
              CustomButton(label: 'Hovered', variant: ButtonVariant.ghost, isHovered: true),
              CustomButton(label: 'Disabled', variant: ButtonVariant.ghost, isDisabled: true),
            ],
          ),
        ],
      ),
    );
  }
}
