import 'package:flutter/material.dart';

import 'package:task_1/constants/const.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 74, 120, 157),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.drag_handle,
              color: Colors.black,
              size: 30,
            ),
            const Spacer(),
            Text(
              title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const Spacer(),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/MAN.jpg'),
            ),
            KWidth,
          ],
        ),
      ),
    );
  }
}
