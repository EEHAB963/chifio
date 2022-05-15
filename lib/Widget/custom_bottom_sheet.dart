import 'package:chefio/Widget/custom_slider.dart';
import 'package:chefio/Widget/mnue_category.dart';
import 'package:chefio/Widget/primary_button.dart';
import 'package:chefio/constans/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class CoustomBottomSheet extends StatefulWidget {
  const CoustomBottomSheet({Key? key}) : super(key: key);

  @override
  State<CoustomBottomSheet> createState() => _CoustomBottomSheetState();
}

class _CoustomBottomSheetState extends State<CoustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.filter_list),
      onPressed: () {
        showBottomSheet(
          enableDrag: false,
          context: context,
          builder: (context) => buildSheet(),
        );
      },
    );
  }

  Widget buildSheet() {
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
                fontSize: 17, fontWeight: FontWeight.w700, color: textColor),
          )),
          SizedBox(
            height: 25,
          ),
          Text("Category",
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w700, color: textColor)),
          SizedBox(
            height: 20,
          ),
          MnueCategory(x: 1),
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
                colorText: textColor,
              ),
              PrimaryButton(
                  onTap: () {},
                  text: "Next",
                  buttonColor: butonColor,
                  colorText: Colors.white)
            ],
          )
        ],
      ),
    );
  }
}
