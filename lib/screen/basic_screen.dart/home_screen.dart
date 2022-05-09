import 'package:chefio/Widget/bottom_nav_bar_widget.dart';
import 'package:chefio/Widget/my_smole_buton.dart';
import 'package:chefio/Widget/my_text_form_fild.dart';
import 'package:chefio/constans/colors.dart';
import 'package:chefio/screen/taps/home_tap.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int x = 1;
  int lr = 1;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: size.height / 3,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                MyTextFormFild(
                  icon: IconlyBroken.search,
                  text: 'Search',
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Category',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: MySmoleButon(
                        textColor: x == 1 ? Colors.white : textColor2,
                        color: x == 1 ? butonColor : form,
                        text: 'All',
                        onTap: () {
                          setState(() {
                            x = 1;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: MySmoleButon(
                        textColor: x == 2 ? Colors.white : textColor2,
                        color: x == 2 ? butonColor : form,
                        text: 'Food',
                        onTap: () {
                          setState(() {
                            x = 2;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: MySmoleButon(
                        textColor: x == 3 ? Colors.white : textColor2,
                        color: x == 3 ? butonColor : form,
                        text: 'Drink',
                        onTap: () {
                          setState(() {
                            x = 3;
                          });
                        },
                      ),
                    ),
                    const Expanded(
                      flex: 2,
                      child: SizedBox(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: size.height - 10 - size.height / 3,
                alignment: Alignment.topCenter,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  lr = 1;
                                  //laeft== 1
                                });
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'left',
                                    style: lr == 1
                                        ? Theme.of(context).textTheme.headline1
                                        : Theme.of(context).textTheme.headline2,
                                  ),
                                  Container(
                                    height: 3,
                                    color: lr == 1 ? butonColor : textColor2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  lr = 2;
                                  //Raert== 2
                                });
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Raet',
                                    style: lr == 2
                                        ? Theme.of(context).textTheme.headline1
                                        : Theme.of(context).textTheme.headline2,
                                  ),
                                  Container(
                                    height: 3,
                                    color: lr == 2 ? butonColor : textColor2,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: HomeTap(),
                        color: Colors.white,
                      ),
                    ),
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
        ],
      ),
    );
  }
}
