import 'package:chefio/Widget/bottom_nav_bar_widget.dart';
import 'package:chefio/Widget/my_smole_buton.dart';
import 'package:chefio/Widget/my_text_form_fild.dart';
import 'package:chefio/constans/colors.dart';
import 'package:chefio/provider/home_provider.dart';
import 'package:chefio/screen/taps/home_tap.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  height: size.height,
                  child: Column(
                    children: [
                      Container(
                          height: size.height - 60,
                          child: provider.screens[provider.index]),
                      BottomNavBarWidget(),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 28,
                  left: size.width / 2 - 30,
                  right: size.width / 2 - 30,
                  child: const CircleAvatar(
                    radius: 35,
                    backgroundColor: butonColor,
                    child: Icon(
                      IconlyBold.scan,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
