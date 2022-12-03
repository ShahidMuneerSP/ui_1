import 'package:flutter/material.dart';
import 'package:task_1/constants/const.dart';

import '../widgets/appbar_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: 'LOGO',
            )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            KHight20,
            Row(
              children: [
                KWidth30,
                Container(
                  height: 100,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 169, 201, 227),
                  ),
                  child: const Center(
                    child: Text(
                      "New Inwards Request:  13",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            KHight20,
            Row(
              children: [
                KWidth30,
                Container(
                  height: 100,
                  width: 330,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 169, 201, 227),
                  ),
                    child: const Center(
                    child: Text(
                      "Create Outward Request",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
