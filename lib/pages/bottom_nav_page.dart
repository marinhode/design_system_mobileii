import 'package:flutter/material.dart';
import '../delegates/bottom_nav_delegate.dart';
import '../widgets/app_bottom_nav.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage>
    implements BottomNavDelegate {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Bottom Navigation')),
      body: Center(
        child: Text(
          'Aba atual: $_currentIndex',
          style: const TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: AppBottomNav(
        currentIndex: _currentIndex,
        delegate: this,
      ),
    );
  }

  @override
  void onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
