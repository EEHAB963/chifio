import 'package:chefio/constans/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class BottomNavBarWidget extends StatefulWidget {
  BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int index = 0;
  int get ind => index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: Container(
                    width: 55,
                    child: SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            IconlyBold.home,
                            size: 25,
                            color: index == 0 ? butonColor : textColor2,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: index == 0 ? butonColor : textColor2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //................
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Container(
                    width: 55,
                    child: Column(
                      children: [
                        Icon(
                          IconlyBold.edit,
                          size: 25,
                          color: index == 1 ? butonColor : textColor2,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Upload',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: index == 1 ? butonColor : textColor2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //..............
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 55,
                    child: Column(
                      children: [
                        Icon(
                          Icons.home,
                          size: 25,
                          color: index == 2 ? butonColor : textColor2,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Scan',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: index == 2 ? butonColor : textColor2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //..............
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 3;
                    });
                  },
                  child: Container(
                    width: 55,
                    child: Column(
                      children: [
                        Icon(
                          IconlyBold.notification,
                          size: 25,
                          color: index == 3 ? butonColor : textColor2,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Notification',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: index == 3 ? butonColor : textColor2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //..............
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 4;
                    });
                  },
                  child: Container(
                    width: 55,
                    child: Column(
                      children: [
                        Icon(
                          IconlyBold.profile,
                          size: 25,
                          color: index == 4 ? butonColor : textColor2,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: index == 4 ? butonColor : textColor2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
