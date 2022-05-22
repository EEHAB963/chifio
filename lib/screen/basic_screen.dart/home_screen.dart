import 'package:chefio/Widget/bottom_nav_bar_widget.dart';
import 'package:chefio/Widget/buttom_scan_widget.dart';
import 'package:chefio/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return Scaffold(
        bottomNavigationBar: BottomNavBarWidget(),
        floatingActionButton: ButtomScanWidget(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: provider.screens[provider.index],
      );
    });
  }
}
