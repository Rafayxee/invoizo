import 'package:flutter/material.dart';
import 'package:invoizo/view/Invoice/invoice_screen.dart';
import 'package:invoizo/view/home/home_screen.dart';
import 'package:invoizo/view_model/main_screen_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List screen = [
      HomeScreen(),
      InvoiceScreen(),
      Container(color: Colors.red),
      Container(color: Colors.green), // Added for the 4th screen
    ];
    final _mainScreenProvider = Provider.of<MainScreenViewModel>(context);
    int currentScreenIndex = _mainScreenProvider.fetchCurrentIndex;

    // Function to determine icon color based on current index
    Color getIconColor(int index) {
      return currentScreenIndex == index ? Colors.blue : Colors.black;
    }

    return Scaffold(
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screen[currentScreenIndex],
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        color: Colors.red,
        shape: const CircularNotchedRectangle(),
        height: 60,
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color: getIconColor(0),
              ),
              onPressed: () {
                _mainScreenProvider.updateScreenIndex(0);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: getIconColor(1),
              ),
              onPressed: () {
                _mainScreenProvider.updateScreenIndex(1);
              },
            ),
            const SizedBox(width: 24), // Space for FAB
            IconButton(
              icon: Icon(
                Icons.print,
                color: getIconColor(2),
              ),
              onPressed: () {
                _mainScreenProvider.updateScreenIndex(2);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.people,
                color: getIconColor(3),
              ),
              onPressed: () {
                _mainScreenProvider.updateScreenIndex(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildNavItem(IconData icon, String tooltip, int index, int currentIndex,
    MainScreenViewModel provider) {
  return IconButton(
    icon: Icon(icon, color: currentIndex == index ? Colors.blue : Colors.black),
    tooltip: tooltip,
    onPressed: () => provider.updateScreenIndex(index),
  );
}

List<Widget> _buildNavigationItems(
    int currentIndex, MainScreenViewModel provider) {
  return [
    _buildNavItem(Icons.menu, 'Home', 0, currentIndex, provider),
    _buildNavItem(Icons.search, 'Search', 1, currentIndex, provider),
    const SizedBox(width: 24),
    _buildNavItem(Icons.print, 'Print', 2, currentIndex, provider),
    _buildNavItem(Icons.people, 'People', 3, currentIndex, provider),
  ];
}
