import 'dart:math';

import 'package:chefio/Widget/big_botton.dart';
import 'package:chefio/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_screen.dart';

class StartScreen extends StatefulWidget {
  StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  bool? open;

  @override
  void initState() {
    gitPref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  'assets/images/Onboarding.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'Start Cooking',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: 209,
                      child: Text(
                        "Let’s join our communityto cook better food!",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    InkWell(
                        onTap: () {
                          print(open);
                          if (open == true) {
                            print('git pref');
                            Navigator.pushNamedAndRemoveUntil(
                                context, "homescreen", (route) => false);
                          } else {
                            print('No git pref');
                            Navigator.pushNamedAndRemoveUntil(
                                context, "login", (route) => false);
                          }
                        },
                        child:
                            MyTextButon(color: buttonColor, text: 'Get Start')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //  method for getting data from pref to log in
  gitPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    open = pref.getBool('open');
  }
}
