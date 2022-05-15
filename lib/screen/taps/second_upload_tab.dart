import 'package:chefio/Widget/my_smole_buton.dart';
import 'package:chefio/constans/colors.dart';
import 'package:flutter/material.dart';

import '../../Widget/my_bag_boton.dart';
import '../../Widget/primary_button.dart';

class SecondUploadScreen extends StatefulWidget {
  SecondUploadScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SecondUploadScreen> createState() => _SecondUploadScreenState();
}

class _SecondUploadScreenState extends State<SecondUploadScreen> {
  int ingrediant = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Cancel",
                              style:
                                  TextStyle(color: butonColorRed, fontSize: 17),
                            ),
                          ),
                          Text(
                            "2/2",
                            style: TextStyle(fontSize: 17, color: textColor),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ingrediant",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: textColor),
                          ),
                          TextButton.icon(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all(textColor),
                              ),
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                              ),
                              label: Text(
                                "Group",
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: ingrediant,
                          itemBuilder: (context, index) {
                            return enterIngrediant();
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      ingrediantButton(),
                    ],
                  ),
                ),
              ),
              Container(
                height: 8,
                width: double.infinity,
                color: Color(0xffF4F5F7),
              ),
              Column(
                children: [
                  steps(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PrimaryButton(
                          onTap: () {},
                          colorText: textColor,
                          text: "Back",
                          buttonColor: Color(0xffF4F5F7)),
                      PrimaryButton(
                        onTap: () {},
                        colorText: Colors.white,
                        text: "Next",
                        buttonColor: butonColor,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding steps() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Steps",
            style: TextStyle(
                color: textColor, fontSize: 17, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  CircleAvatar(
                      radius: 10,
                      backgroundColor: textColor,
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  Icon(
                    Icons.drag_indicator,
                    color: Color(0xff9FA5C0),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: "Tell a little about your food",
                    hintStyle: TextStyle(color: Color(0xff9FA5C0)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffF4F5F7),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt,
                        size: 30,
                        color: Color(0xff3E5481),
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  //ingretiant section

  Padding ingrediantButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            ingrediant++;
          });
        },
        child: Container(
          alignment: Alignment.center,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: textColor),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add),
              Text("Ingrediant",
                  style: TextStyle(
                    fontSize: 15,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  //enter engrediant section

  enterIngrediant() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(
            Icons.drag_indicator,
            size: 30,
            color: Color(0xff9FA5C0),
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter Ingrediant",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(27)))),
            ),
          )
        ],
      ),
    );
  }
}
