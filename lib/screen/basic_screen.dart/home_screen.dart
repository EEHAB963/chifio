import 'package:chefio/Widget/bottom_nav_bar_widget.dart';
import 'package:chefio/Widget/my_smole_buton.dart';
import 'package:chefio/Widget/my_text_form_fild.dart';
import 'package:chefio/constans/colors.dart';
import 'package:chefio/provider/home_provider.dart';
import 'package:chefio/screen/taps/home_tap.dart';
import 'package:chefio/screen/taps/scan-camera.dart';
import 'package:chefio/screen/taps/scan_tap.dart';
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
                Column(
                  children: [
                    Container(
                      height: size.height - 60,
                      child: provider.screens[provider.index],
                    ),
                    Spacer(),
                    BottomNavBarWidget(),
                  ],
                ),
                Positioned(
                  top: size.height - 98,
                  left: size.width / 2 - 30,
                  right: size.width / 2 - 30,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => myBottomShet(context),
                          );
                        },
                        child: const CircleAvatar(
                          radius: 35,
                          backgroundColor: butonColor,
                          child: Icon(
                            IconlyBold.scan,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Scan',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: provider.index == 2 ? butonColor : textColor2,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget myBottomShet(BuildContext context) {
    return Container(
      height: 350,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      'Choose one option',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: textColor2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(children: [
                      Image.asset('assets/images/image 66.png'),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Food',
                        style: Theme.of(context).textTheme.headline1,
                      )
                    ]),
                  ),
                ),
              ),
              //................
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScanCamera(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: textColor2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(children: [
                      Image.asset('assets/images/image 77.png'),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Ingredient',
                        style: Theme.of(context).textTheme.headline1,
                      )
                    ]),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
