import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  BottomNavBarWidget({Key? key}) : super(key: key);
  List<Widget> listBottomNavigationBarItem = [
    Expanded(
      child: Column(
        children: const [
          Icon(Icons.home),
          SizedBox(
            height: 5,
          ),
          Text('home'),
        ],
      ),
    ),
    Expanded(
      child: Column(
        children: const [
          Icon(Icons.add),
          SizedBox(
            height: 5,
          ),
          Text('Udbont'),
        ],
      ),
    ),
    Expanded(
      child: Column(
        children:  [
          Stack(
            children: [
              
              Icon(Icons.document_scanner),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text('scan'),
        ],
      ),
    ),
    Expanded(
      child: Column(
        children: const [
          Icon(Icons.notifications),
          SizedBox(
            height: 5,
          ),
          Text('Notifcations'),
        ],
      ),
    ),
    Expanded(
      child: Column(
        children: const [
          Icon(Icons.person),
          SizedBox(
            height: 5,
          ),
          Text('profil'),
        ],
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: listBottomNavigationBarItem,
      ),
    );
  }
}
