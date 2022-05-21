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
          body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  "New",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              followNotification(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  "Today",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              likedNotification(),
              followNotification(),
              likedNotification(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  "yesterday",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              followNotification(),
              followNotification()
            ],
          ),
        ),
      )),
    );
  }

  likedNotification() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      AssetImage("assets/images/Rectangle 196.png"),
                ),
                Positioned(
                  bottom: 17,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/image4.png"),
                    radius: 25,
                  ),
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
                RichText(
                  maxLines: 2,
                  text: TextSpan(
                      text: "John steve ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: headLineColor),
                      children: [
                        TextSpan(
                            text: "  and \n",
                            style: TextStyle(
                              color: textColor2,
                            )),
                        TextSpan(
                          text: "sam Winchester ",
                        ),
                      ]),
                ),
                SizedBox(
                  height: 5,
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
          SizedBox(
            width: 10,
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
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
                    fontSize: 14,
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
        ],
      ),
    );
  }
}
