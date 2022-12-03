import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'View/my_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       fontFamily: GoogleFonts.montserrat().fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
