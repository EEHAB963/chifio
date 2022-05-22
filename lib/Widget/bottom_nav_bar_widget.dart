import 'package:chefio/constans/colors.dart';
import 'package:chefio/provider/home_provider.dart';
import 'package:chefio/screen/taps/upload_tap.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

class BottomNavBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return Stack(
          children: [
            Container(
              color: Colors.white,
              height: 55,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        provider.clicBottomNavBar(0);
                      },
                      child: SizedBox(
                        // width: 55,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              IconlyBold.home,
                              size: 25,
                              color: provider.index == 0
                                  ? buttonColor
                                  : textColor2,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: provider.index == 0
                                    ? buttonColor
                                    : textColor2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //................
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UploadTap(),
                          ),
                        );
                      },
                      child: SizedBox(
                        // width: 55,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              IconlyBold.edit,
                              size: 25,
                              color: provider.index == 1
                                  ? buttonColor
                                  : textColor2,
                            ),
                            Text(
                              'Upload',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: provider.index == 1
                                    ? buttonColor
                                    : textColor2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //..............
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 55,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.home,
                              size: 25,
                              color: provider.index == 2
                                  ? buttonColor
                                  : textColor2,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Scan',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: provider.index == 2
                                    ? buttonColor
                                    : textColor2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //..............
                    InkWell(
                      onTap: () {
                        provider.clicBottomNavBar(3);
                      },
                      child: SizedBox(
                        // width: 55,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              IconlyBold.notification,
                              size: 25,
                              color: provider.index == 3
                                  ? buttonColor
                                  : textColor2,
                            ),
                            Text(
                              'Notification',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: provider.index == 3
                                    ? buttonColor
                                    : textColor2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //..............
                    InkWell(
                      onTap: () {
                        provider.clicBottomNavBar(4);
                      },
                      child: SizedBox(
                        //width: 55,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              IconlyBold.profile,
                              size: 25,
                              color: provider.index == 4
                                  ? buttonColor
                                  : textColor2,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: provider.index == 4
                                    ? buttonColor
                                    : textColor2,
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
      },
    );
  }
}
