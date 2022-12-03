import 'package:flutter/material.dart';

import 'Inwards/screen_inwards.dart';
import 'Outwards/screen_outwards.dart';
import 'bottom_nav_widget.dart';
import 'home/screen_home.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final _pages = [
    ScreenHome(),
    ScreenInwards(),
    ScreenOutwards(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
        bottomNavigationBar: const BottomNavigationBarWidget(),
      ),
    );
  }
}
