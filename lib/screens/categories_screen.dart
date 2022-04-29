import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:itechstore/screens/auth_screens/signup_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text(
          "Categories",
          style: TextStyle(
              color: Colors.black87,
              fontFamily: 'Nanum',
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                EvaIcons.shoppingCart,
                color: Colors.grey,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Upcoming Items',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Laptops',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Gaming Laptops',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Notebooks',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Ultrabooks',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: '2 in 1 Laptops',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Chromebooks',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Desktops',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'WorkStations',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'All in one Desktop',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'iMac',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Servers',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Gaming Desktop',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Monitors',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Gaming Mouse',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Accessories',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Cable & Extensions',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Headphones',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'USB FlashDrives',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Keyboard',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Mouse',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'USB HUB & Connector',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Components',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Virtual Reality',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Motherboard',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Computer cases',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'CPU/Processors',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Fan & PC Cooling',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Graphics Card',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'RAM/Memory',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Power Supplies',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 10,
                ),
                CategoryBox(
                  title: 'Storage Devices',
                  widget: SignupScreen(),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryBox extends StatelessWidget {
  final String? title;
  final Widget widget;
  const CategoryBox({Key? key, required this.title, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: OutlinedButton(
        onPressed: () {
          Get.to(() => widget);
        },
        child: Text(
          title!,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, fontFamily: 'RobotoR'
              //backgroundColor: Colors.white
              ),
        ),
      ),
    );
  }
}
