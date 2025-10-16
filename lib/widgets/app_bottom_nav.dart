import 'package:flutter/material.dart';
import '../delegates/bottom_nav_delegate.dart';

class AppBottomNav extends StatelessWidget {
  final int currentIndex;
  final BottomNavDelegate? delegate;

  const AppBottomNav({
    super.key,
    required this.currentIndex,
    this.delegate,
  });

  @override
  Widget build(BuildContext context) {
    const double indicatorHeight = 2.0; // mais fino
    const Color indicatorColor = Color(0xFF0873DE);
    const int itemCount = 4; // número de itens no BottomNavigationBar
    const double indicatorWidth = 24.0;

    final screenWidth = MediaQuery.of(context).size.width;
    final double itemWidth = screenWidth / itemCount;

    return Stack(
      children: [
        BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => delegate?.onTabSelected(index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF0873DE),
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
        // Indicador
        Positioned(
          top: 0,
          left: itemWidth * currentIndex + (itemWidth - indicatorWidth) / 2,
          child: Container(
            width: indicatorWidth,
            height: indicatorHeight,
            decoration: BoxDecoration(
              color: indicatorColor,
              borderRadius: BorderRadius.circular(1),
            ),
          ),
        ),
      ],
    );
  }
}
