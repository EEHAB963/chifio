import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constans/colors.dart';
import '../provider/home_provider.dart';

class LeftAndRight extends StatelessWidget {
  LeftAndRight(
      {Key? key,
      required this.lr,
      this.leftName = 'Left',
      this.rightName = 'Right'})
      : super(key: key);
  bool lr = true;
  String leftName;
  String rightName;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Provider.of<HomeProvider>(context, listen: false).lr();
                print(Provider.of<HomeProvider>(context, listen: false)
                    .leftAndRaet);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    leftName,
                    style: lr == false
                        ? Theme.of(context).textTheme.headline1
                        : Theme.of(context).textTheme.headline2,
                  ),
                  Container(
                    height: 3,
                    color: lr == false ? buttonColor : textColor2,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Provider.of<HomeProvider>(context, listen: false).lr();
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    rightName,
                    style: lr == true
                        ? Theme.of(context).textTheme.headline1
                        : Theme.of(context).textTheme.headline2,
                  ),
                  Container(
                    height: 3,
                    color: lr == true ? buttonColor : textColor2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
