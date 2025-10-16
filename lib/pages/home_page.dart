import 'package:flutter/material.dart';
import 'buttons_page.dart';
import 'checkboxes_page.dart';
import 'text_fields_page.dart';
import 'dropdowns_page.dart';
import 'bottom_nav_page.dart';
import 'colors_page.dart';
import '../widgets/component_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // background branco
      appBar: AppBar(
        title: const Text('Mobile UI Design System'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ComponentCard(
            title: 'Botões',
            description: 'Todos os estilos e estados de botão',
            icon: Icons.touch_app,
            color: Colors.blue,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ButtonsPage()),
            ),
          ),
          ComponentCard(
            title: 'Checkboxes e Toggles',
            description: 'Caixas de seleção, rádios e switches',
            icon: Icons.check_box,
            color: Colors.green,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CheckboxesPage()),
            ),
          ),
          ComponentCard(
            title: 'Campos de Texto',
            description: 'Campos de entrada e áreas de texto',
            icon: Icons.text_fields,
            color: Colors.orange,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const TextFieldsPage()),
            ),
          ),
          ComponentCard(
            title: 'Dropdowns',
            description: 'Menus de seleção e pickers',
            icon: Icons.arrow_drop_down_circle,
            color: Colors.purple,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const DropdownsPage()),
            ),
          ),
          ComponentCard(
            title: 'Navegação Inferior',
            description: 'Barras de navegação e abas',
            icon: Icons.navigation,
            color: Colors.teal,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const BottomNavPage()),
            ),
          ),
          ComponentCard(
            title: 'Cores',
            description: 'Paleta de cores do design system',
            icon: Icons.palette,
            color: Colors.pink,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ColorsPage()),
            ),
          ),
        ],
      ),
    );
  }
}
