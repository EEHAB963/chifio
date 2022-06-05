import 'package:chefio/provider/home_provider.dart';
import 'package:chefio/screen/basic_screen.dart/home_screen.dart';
import 'package:chefio/screen/start_screens/login_screen.dart';
import 'package:chefio/screen/start_screens/singUp_screen.dart';
import 'package:chefio/screen/taps/home_tap.dart';
import 'package:chefio/screen/taps/profile_tap.dart';
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
        initialRoute: "start",
        routes: {
          "start": (context) => StartScreen(),
          "homescreen": (context) => HomeScreen(),
          "signUp": (context) => SingUpScreen(),
          "login": (context) => LoginScreen(),
          "upload": (context) => UploadTap(),
          "secondUpload": (context) => SecondUploadScreen(),
          "notification": (context) => NotifictionTap(),
          "profile": (context) => ProfileTap(),
          "homeTab": (context) => HomeTap(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              systemOverlayStyle:
                  SystemUiOverlayStyle(statusBarColor: Colors.white),
            ),
            textTheme: const TextTheme(
                headline1: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  color: headLineColor,
                ),
                headline2: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: headLineColor),
                headline3: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: headLineColor,
                ),
                bodyText1: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: textColor2),
                bodyText2: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: headLineColor),
                subtitle1: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: textColor2)),
            // primarySwatch:buttonColor,
            primaryColor: buttonColor),
        home: StartScreen(),
      ),
    );
  }
}
