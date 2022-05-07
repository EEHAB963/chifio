import 'package:chefio/Widget/bottom_nav_bar_widget.dart';
import 'package:chefio/Widget/my_bag_boton.dart';
import 'package:chefio/Widget/my_smole_buton.dart';
import 'package:chefio/Widget/my_text_form_fild.dart';
import 'package:chefio/constans/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int x = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 250,
        title: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              MyTextFormFild(
                icon: Icons.search,
                text: 'Search',
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Category',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: MySmoleButon(
                      textColor: x == 1 ? Colors.white : textColor2,
                      color: x == 1 ? butonColor : form,
                      text: 'All',
                      onTap: () {
                        setState(() {
                          x = 1;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: MySmoleButon(
                      textColor: x == 2 ? Colors.white : textColor2,
                      color: x == 2 ? butonColor : form,
                      text: 'Food',
                      onTap: () {
                        setState(() {
                          x = 2;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: MySmoleButon(
                      textColor: x == 3 ? Colors.white : textColor2,
                      color: x == 3 ? butonColor : form,
                      text: 'Drink',
                      onTap: () {
                        setState(() {
                          x = 3;
                        });
                      },
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: SizedBox(),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  BottomNavBarWidget(),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.amber,
                  ),
                ],
              ),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
