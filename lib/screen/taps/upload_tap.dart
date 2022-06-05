import 'package:chefio/Widget/custom_slider.dart';
import 'package:chefio/Widget/big_botton.dart';
import 'package:chefio/constans/colors.dart';
import 'package:chefio/screen/taps/second_upload_tab.dart';
import 'package:flutter/material.dart';

import '../../Widget/custom_bottom_sheet.dart';

class UploadTap extends StatefulWidget {
  UploadTap({Key? key}) : super(key: key);

  @override
  State<UploadTap> createState() => _UploadTapState();
}

class _UploadTapState extends State<UploadTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, "homescreen");
                          },
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 17,
                              color: buttonColorRed,
                            ),
                          )),
                      Text(
                        "1/2",
                        style: TextStyle(fontSize: 17, color: textColor2),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        addCoverPhoto(),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Food Name",
                            style: Theme.of(context).textTheme.headline2),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter Food Name",
                              hintStyle: Theme.of(context).textTheme.subtitle1,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Description",
                            style: Theme.of(context).textTheme.headline2),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          maxLines: 4,
                          decoration: InputDecoration(
                              hintText: "Tell a little about your food",
                              hintStyle: Theme.of(context).textTheme.subtitle1,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(child: CustomSlider()),
                        SizedBox(
                          height: 15,
                        ),
                        MyTextButon(
                          color: buttonColor,
                          text: "Next",
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SecondUploadScreen(),
                              ),
                            );
                          },
                        )
                      ]),
                ],
              ),
            ),
          ),
        ));
  }

  // add cover photo section
  GestureDetector addCoverPhoto() {
    return GestureDetector(
      onTap: () {
        // TO DO : add image to firebase
      },
      child: Container(
        width: double.infinity,
        height: 161,
        decoration: BoxDecoration(
          border: Border.all(color: textColor2, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.photo,
                  size: 65,
                  color: Colors.grey,
                ),
                Text(
                  "Add Cove Photo",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Text("( Up to 12mb )"),
              ]),
        ),
      ),
    );
  }
}
