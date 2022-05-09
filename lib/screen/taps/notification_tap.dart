import 'package:flutter/material.dart';

class NotifictionTap extends StatefulWidget {
  const NotifictionTap({Key? key}) : super(key: key);

  @override
  State<NotifictionTap> createState() => _NotifictionTapState();
}

class _NotifictionTapState extends State<NotifictionTap> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('notification'),
    );
  }
}
