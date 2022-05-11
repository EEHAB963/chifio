import 'package:chefio/Widget/my_bag_boton.dart';
import 'package:chefio/constans/colors.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Expanded(
            flex: 1,
            child: Container(
                child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/image 44.png',
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/images/Ellipse 2.png',
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'assets/images/Ellipse 7.png',
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    'assets/images/Ellipse 7.png',
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'assets/images/image 3.png',
                    height: 110,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/images/image 3.png',
                    height: 110,
                  ),
                ),
              ],
            )),
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
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: MyTextButon(color: butonColor, text: 'Get Start')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
