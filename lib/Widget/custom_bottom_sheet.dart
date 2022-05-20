import 'package:chefio/Widget/custom_slider.dart';
import 'package:chefio/Widget/menu_category.dart';
import 'package:chefio/Widget/primary_button.dart';
import 'package:chefio/constans/colors.dart';
import 'package:flutter/material.dart';

class CoustomBottomSheet extends StatelessWidget {
  CoustomBottomSheet({Key? key, required this.filtterIcon}) : super(key: key);
  IconData filtterIcon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(filtterIcon),
      onPressed: () {
        showBottomSheet(
          enableDrag: false,
          context: context,
          builder: (context) => buildSheet(context),
        );
      },
    );
  }

  Widget buildSheet(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
            "Add a filtter",
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: headLineColor),
          )),
          SizedBox(
            height: 25,
          ),
          Text("Category",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: headLineColor)),
          SizedBox(
            height: 20,
          ),
          MenuCategory(x: 1),
          SizedBox(
            height: 20,
          ),
          CustomSlider(),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PrimaryButton(
                onTap: (() {
                  Navigator.pop(context);
                }),
                text: "Back",
                buttonColor: Color(0xffF4F5F7),
                colorText: headLineColor,
              ),
              PrimaryButton(
                  onTap: () {},
                  text: "Next",
                  buttonColor: buttonColor,
                  colorText: Colors.white)
            ],
          )
        ],
      ),
    );
  }
}
