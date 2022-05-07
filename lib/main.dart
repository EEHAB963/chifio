import 'package:chefio/screen/start_screens/start_screen.dart';
import 'package:flutter/material.dart';

import 'constans/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
            headline1: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
            headline2: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w500, color: textColor2)),
        primarySwatch: Colors.blue,
      ),
      home: const StartScreen(),
    );
  }
}
