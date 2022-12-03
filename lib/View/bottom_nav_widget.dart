import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            backgroundColor: Color.fromARGB(255, 74, 120, 157),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white60,
            selectedIconTheme: const IconThemeData(color: Colors.black),
            unselectedIconTheme: const IconThemeData(color: Colors.white60),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_circle_left), label: 'INWARDS'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_circle_right), label: 'OUTWARDS'),
            ]);
      },
    );
  }
}
