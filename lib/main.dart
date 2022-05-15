import 'package:chefio/provider/home_provider.dart';
import 'package:chefio/screen/start_screens/start_screen.dart';
import 'package:chefio/screen/taps/second_upload_tab.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constans/colors.dart';
import 'screen/taps/upload_tap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider()),
      ],
      child: MaterialApp(
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
                fontSize: 17, fontWeight: FontWeight.w500, color: textColor2),
            headline3: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
          primarySwatch: Colors.blue,
        ),
        home: UploadTap(),
      ),
    );
  }
}
