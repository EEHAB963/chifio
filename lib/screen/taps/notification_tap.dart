import 'package:chefio/Widget/primary_button.dart';
import 'package:chefio/constans/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../Widget/menu_button.dart';

class NotifictionTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          followNotification(),
          likedNotification(),
          // aa(),
        ],
      )),
    );
  }

  likedNotification() {
    return SizedBox(
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: 80,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      AssetImage("assets/images/Rectangle 196.png"),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/image4.png"),
                  radius: 30,
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "John steve",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: headLineColor),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "and",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: textColor2),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Text(
                        "sam Winchester",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: headLineColor),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Liker your recipe",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: textColor2),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 2,
                      backgroundColor: textColor2,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("1h")
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                height: 64,
                width: 64,
                child: Image(
                  image: AssetImage(
                    "assets/images/Cover.png",
                  ),
                  fit: BoxFit.cover,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  followNotification() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage("assets/images/image4.png"),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dean Winchester",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: headLineColor),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "now following you",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: textColor2),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: textColor2,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("1h")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  PrimaryButton(
                    text: "follow",
                    buttonColor: buttonColor,
                    colorText: Colors.white,
                    onTap: () {},
                    width: 87,
                    hight: 39,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  aa() {
    SizedBox(
      height: 300,
      child: Row(children: [Stack(), Column(), Container()]),
    );
  }
}
