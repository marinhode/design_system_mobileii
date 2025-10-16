import 'package:flutter/material.dart';
import '../widgets/section_title.dart';
import '../widgets/app_toggle.dart';
import '../widgets/app_radio.dart'; // importando o AppRadio

class CheckboxesPage extends StatefulWidget {
  const CheckboxesPage({super.key});

  @override
  State<CheckboxesPage> createState() => _CheckboxesPageState();
}

class _CheckboxesPageState extends State<CheckboxesPage> {
  bool checkbox1 = false;
  bool checkbox2 = true;
  String radioValue = 'default';
  bool toggle1 = false;
  bool toggle2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Checkboxes & Toggles')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // CHECKBOXES
          const SectionTitle('Checkboxes'),
          CheckboxListTile(
            title: const Text('Checkbox 1'),
            value: checkbox1,
            onChanged: (v) => setState(() => checkbox1 = v ?? false),
            activeColor: const Color(0xFF0873DE),
            checkColor: Colors.white,
            side: const BorderSide(color: Color(0xFF0873DE), width: 2),
          ),
          CheckboxListTile(
            title: const Text('Checkbox 2 (disabled)'),
            value: checkbox2,
            onChanged: null,
            activeColor: const Color(0xFF0873DE),
            checkColor: Colors.white,
            side: const BorderSide(color: Color(0xFF0873DE), width: 2),
          ),
          const SizedBox(height: 16),

          // RADIOS
          const SectionTitle('Radio Buttons'),
          AppRadio<String>(
            label: 'Default',
            value: 'default',
            groupValue: radioValue,
            onChanged: (v) => setState(() => radioValue = v),
          ),
          const SizedBox(height: 8),
          AppRadio<String>(
            label: 'Active',
            value: 'active',
            groupValue: radioValue,
            onChanged: (v) => setState(() => radioValue = v),
          ),
          const SizedBox(height: 8),
          AppRadio<String>(
            label: 'Disabled',
            value: 'disabled',
            groupValue: radioValue,
            onChanged: null,
            enabled: false,
          ),
          const SizedBox(height: 16),

          // TOGGLES
          const SectionTitle('Toggles'),
          AppToggle(
            title: const Text('Toggle 1'),
            value: toggle1,
            onChanged: (v) => setState(() => toggle1 = v),
          ),
          AppToggle(
            title: const Text('Toggle 2 (disabled)'),
            value: toggle2,
            onChanged: null,
            enabled: false,
          ),
        ],
      ),
    );
  }
}
