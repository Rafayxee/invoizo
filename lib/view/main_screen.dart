import 'package:flutter/material.dart';
import 'package:invoizo/view_model/main_screen_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List screen = [
      Container(color: Colors.amber),
      Container(color: Colors.blue),
      Container(color: Colors.red)
    ];
    final _mainScreenProvider = Provider.of<MainScreenViewModel>(context);
    int currentScreenIndex = _mainScreenProvider.fetchCurrentIndex;
    return Scaffold(
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screen[currentScreenIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(
            color: Colors.amberAccent,
          ),
          selectedItemColor: Colors.amberAccent,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          elevation: 0,
          currentIndex: currentScreenIndex,
          onTap: (value) => _mainScreenProvider.updateScreenIndex(value),
          items: [
            const BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.home),
            ),
            const BottomNavigationBarItem(label: '', icon: Icon(Icons.search)),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.favorite),
            ),
          ],
        ),
      ),
    );
  }
}
