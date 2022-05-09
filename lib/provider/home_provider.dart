import 'package:chefio/screen/taps/Profile_tap.dart';
import 'package:chefio/screen/taps/home_tap.dart';
import 'package:chefio/screen/taps/notification_tap.dart';
import 'package:chefio/screen/taps/scan_tap.dart';
import 'package:chefio/screen/taps/upload_tap.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int index = 0;

  List<Widget> screens = [
    HomeTap(),
    ProfileTap(),
    NotifictionTap(),
    UploadTap(),
    ScanTap(),
  ];
}
