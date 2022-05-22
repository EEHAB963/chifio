import 'package:chefio/provider/home_provider.dart';
import 'package:chefio/screen/taps/upload_tap.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'constans/colors.dart';
import 'screen/start_screens/start_screen.dart';
import 'screen/taps/notification_tap.dart';
import 'screen/taps/second_upload_tab.dart';

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
          appBarTheme: AppBarTheme(
              systemOverlayStyle:
                  SystemUiOverlayStyle(statusBarColor: Colors.white)),
          textTheme: const TextTheme(
              headline1: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: headLineColor,
              ),
              headline2: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: headLineColor),
              headline3: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: headLineColor,
              ),
              bodyText1: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w500, color: textColor2),
              bodyText2: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: headLineColor),
              subtitle1: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: textColor2)),
          primarySwatch: Colors.blue,
        ),
        home: StartScreen(),
      ),
    );
  }
}
