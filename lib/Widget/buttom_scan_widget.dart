import 'package:chefio/screen/taps/scan-camera.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../constans/colors.dart';

class ButtomScanWidget extends StatelessWidget {
  const ButtomScanWidget({Key? key}) : super(key: key);

  get buttonColor => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => myBottomShet(context),
          );
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: buttonColor,
          child: const Icon(
            IconlyBold.scan,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }

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
}
