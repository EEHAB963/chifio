import 'package:chefio/screen/taps/Profile_tap.dart';
import 'package:chefio/screen/taps/home_tap.dart';
import 'package:chefio/screen/taps/notification_tap.dart';
import 'package:chefio/screen/taps/scan_tap.dart';
import 'package:chefio/screen/taps/upload_tap.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../constans/colors.dart';

class HomeProvider extends ChangeNotifier {
  int index = 0; // The private index at the bottomNavBar
  bool leftAndRaet = true;
  int manuCategore = 1;

  notifyListeners();

  List<Widget> screens = [
    HomeTap(),
    UploadTap(),
    ScanTap(),
    NotifictionTap(),
    ProfileTap(),
  ];
  final items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      label: 'k',
      icon: Icon(
        IconlyBold.home,
        size: 25, color: buttonColor,
        // color:
        //  index == 0
        //     ? buttonColor
        //     : textColor2,
      ),
    ),
    BottomNavigationBarItem(
      label: 'k',
      icon: Icon(
        IconlyBold.home,
        color: buttonColor,
        size: 25,
        //color:
        //  index == 0
        //     ? buttonColor
        //     : textColor2,
      ),
    ),
    BottomNavigationBarItem(
      label: 'j',
      icon: Icon(
        IconlyBold.home,
        color: buttonColor,
        size: 25,
        //color:
        //  index == 0
        //     ? buttonColor
        //     : textColor2,
      ),
    ),
    BottomNavigationBarItem(
      label: 'm',
      icon: Icon(
        IconlyBold.home,
        color: buttonColor,
        size: 25,
        //color:
        //  index == 0
        //     ? buttonColor
        //     : textColor2,
      ),
    ),
    BottomNavigationBarItem(
      label: 'm',
      icon: Icon(
        IconlyBold.home,
        color: buttonColor,
        size: 25,
        //color:
        //  index == 0
        //     ? buttonColor
        //     : textColor2,
      ),
    ),
  ];

  void lr() {
    leftAndRaet = !leftAndRaet;

    notifyListeners();
  }

  void clicCategore(int a) {
    this.manuCategore = a;
    notifyListeners();
  }

  void clicBottomNavBar(int a) {
    this.index = a;
    notifyListeners();
  }
}
