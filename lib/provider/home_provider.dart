import 'package:chefio/screen/taps/Profile_tap.dart';
import 'package:chefio/screen/taps/home_tap.dart';
import 'package:chefio/screen/taps/notification_tap.dart';
import 'package:chefio/screen/taps/scan_tap.dart';
import 'package:chefio/screen/taps/upload_tap.dart';
import 'package:flutter/material.dart';

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
