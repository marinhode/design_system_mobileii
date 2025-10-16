import 'package:flutter/material.dart';

class AppDropdownCustom<T> extends StatefulWidget {
  final List<T> options;
  final List<T> selectedValues;
  final String hint;
  final ValueChanged<List<T>>? onChanged;

  const AppDropdownCustom({
    super.key,
    required this.options,
    this.selectedValues = const [],
    required this.hint,
    this.onChanged,
  });

  @override
  State<AppDropdownCustom<T>> createState() => _AppDropdownCustomState<T>();
}

class _AppDropdownCustomState<T> extends State<AppDropdownCustom<T>> {
  late List<T> selected;
  bool isOpen = false;

  @override
  void initState() {
    super.initState();
    selected = List.from(widget.selectedValues);
  }

  void toggleDropdown() {
    setState(() {
      isOpen = !isOpen;
    });
  }

  void toggleItem(T item) {
    setState(() {
      if (selected.contains(item)) {
        selected.remove(item);
      } else {
        selected.add(item);
      }
      widget.onChanged?.call(selected);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Botão do dropdown
        GestureDetector(
          onTap: toggleDropdown,
          child: Container(
            decoration: BoxDecoration(
              color: isOpen ? const Color(0xFFE6F2FE) : Colors.transparent,
              border: Border.all(
                  color: const Color(0xFF0873DE), // stroke azul
                  width: 1.5),
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.hint, // sempre "Select your option"
                  style: const TextStyle(
                    color: Color(0xFF0873DE),
                  ),
                ),
                Icon(
                  isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                  color: Colors.grey[700],
                ),
              ],
            ),
          ),
        ),
        // Lista de opções
        if (isOpen)
          Container(
            margin: const EdgeInsets.only(top: 4),
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            constraints: const BoxConstraints(maxHeight: 200),
            child: ListView(
              shrinkWrap: true,
              children: widget.options
                  .map(
                    (option) => Theme(
                      data: Theme.of(context).copyWith(
                        checkboxTheme: CheckboxThemeData(
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                              (states) {
                            // apenas o estado selecionado fica azul
                            if (states.contains(MaterialState.selected)) {
                              return const Color(0xFF0873DE);
                            }
                            return Colors.transparent;
                          }),
                          side: const BorderSide(color: Color(0xFF0873DE), width: 1.5),
                        ),
                      ),
                      child: CheckboxListTile(
                        title: Text(option.toString()),
                        value: selected.contains(option),
                        onChanged: (_) => toggleItem(option),
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 12),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
      ],
    );
  }
}
