import 'package:flutter/material.dart';
import '../widgets/section_title.dart';
import '../widgets/app_dropdown.dart';

class DropdownsPage extends StatefulWidget {
  const DropdownsPage({super.key});

  @override
  State<DropdownsPage> createState() => _DropdownsPageState();
}

class _DropdownsPageState extends State<DropdownsPage> {
  List<String> multiSelected = [];

  @override
  Widget build(BuildContext context) {
    final options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Dropdowns')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SectionTitle('Multi Select Dropdown'),
          AppDropdownCustom<String>(
            hint: 'Select options',
            options: options,
            selectedValues: multiSelected,
            onChanged: (values) {
              setState(() {
                multiSelected = values;
              });
            },
          ),
        ],
      ),
    );
  }
}
