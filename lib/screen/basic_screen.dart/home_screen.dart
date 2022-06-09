import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constans/colors.dart';
import '../taps/Profile_tap.dart';
import '../taps/home_tap.dart';
import '../taps/notification_tap.dart';
import '../taps/scan-camera.dart';
import '../taps/scan_tap.dart';
import '../taps/upload_tap.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    setDataPref();
    super.initState();
  }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // we put the BottomNavigationbar in a sepatate method
    final bottomNavigation = BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (int index) {
        if (index == 0) {
          setState(() {
            _currentIndex = index;
          });
        } else if (index == 1) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UploadTap(),
              ));
        } else if (index == 2) {
          showModalBottomSheet(
            context: context,
            builder: (context) => myBottomShet(context),
          );
        } else if (index == 3) {
          setState(() {
            _currentIndex = index;
          });
        } else {
          setState(() {
            _currentIndex = index;
          });
        }
      },
      fixedColor: buttonColor,
      type: BottomNavigationBarType.fixed,
      items: item,
    );
    return Scaffold(
      // we put the Bottom Navigation bar in a sepatate method
      bottomNavigationBar: bottomNavigation,

      // we put the  floating Action Button in a sepatate method
      floatingActionButton: floatingActionButton(),

      //  Here is the location of the floatingActionButton
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,

      body: screens[_currentIndex],
    );
  }

// list of bottom Navigation bar item
  List<BottomNavigationBarItem> item = const [
    BottomNavigationBarItem(
        icon: Icon(
          IconlyBold.home,
        ),
        label: 'home'),
    BottomNavigationBarItem(
        icon: Icon(
          IconlyBold.edit,
        ),
        label: 'Upload'),
    BottomNavigationBarItem(
        icon: Icon(
          IconlyBold.add_user,
          color: Colors.white,
        ),
        label: 'scan'),
    BottomNavigationBarItem(
        icon: Icon(
          IconlyBold.notification,
        ),
        label: 'notification'),
    BottomNavigationBarItem(
        icon: Icon(
          IconlyBold.profile,
        ),
        label: 'profil'),
  ];

  // list of scrren
  List<Widget> screens = [
    HomeTap(),
    UploadTap(),
    ScanTap(),
    NotifictionTap(),
    ProfileTap(),
  ];

  // We put the bottom Shet for scanning in a separate method
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

  // floatingActionButton is method
  floatingActionButton() {
    return FloatingActionButton(
      backgroundColor: buttonColor,
      elevation: 0,
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => myBottomShet(context),
        );
      },
      child: const Icon(
        IconlyBold.scan,
        size: 30,
        color: Colors.white,
      ),
    );
  }

//Methid for setting data to pref to
  setDataPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool("open", true);
    print('don save data in pref');
  }
}
