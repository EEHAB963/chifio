import 'package:chefio/Widget/my_bag_boton.dart';
import 'package:chefio/constans/colors.dart';
import 'package:chefio/screen/taps/second_upload_tab.dart';
import 'package:flutter/material.dart';

class UploadTap extends StatefulWidget {
  UploadTap({Key? key}) : super(key: key);

  @override
  State<UploadTap> createState() => _UploadTapState();
}

class _UploadTapState extends State<UploadTap> {
  double slider = 30;

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
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 17,
                              color: butonColorRed,
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
                        Text(
                          "Food Name",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: textColor),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter Food Name",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Description",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: textColor),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          maxLines: 4,
                          decoration: InputDecoration(
                              hintText: "Tell a little about your food",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: sliderDesign(),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MyTextButon(
                          color: butonColor,
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

  // slider design section
  Column sliderDesign() {
    return Column(
      children: [
        Row(
          children: const [
            Text(
              "Cooking Duration  ",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
            Text(
              "( in minutes )",
              style: TextStyle(fontSize: 15, color: textColor2),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "< 10",
                style:
                    TextStyle(color: butonColor, fontWeight: FontWeight.bold),
              ),
              Text("30",
                  style: TextStyle(
                      color: butonColor, fontWeight: FontWeight.bold)),
              Text("> 60",
                  style: TextStyle(
                      color: butonColor, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Slider(
            activeColor: Colors.green,
            thumbColor: Colors.green,
            value: slider,
            max: 60,
            min: 10,
            onChanged: (value) {
              setState(() {
                slider = value;
                print(value);
              });
            }),
      ],
    );
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
              children: [
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
