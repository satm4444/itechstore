import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:itechstore/static/all_colors.dart';
import 'package:itechstore/screens/auth_screens/login_screen.dart';
import 'package:itechstore/screens/auth_screens/signup_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorliney.scaffBack,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.3,
        title: Text(
          "Profile",
          style: TextStyle(
              color: Colors.black87,
              fontFamily: 'Nanum',
              fontWeight: FontWeight.bold),
        ),
        actions: [
          // IconButton(
          //     onPressed: () {},
          //     icon: Icon(
          //       EvaIcons.settings2Outline,
          //       color: Colors.grey,
          //     )),
        ],
      ),
      body: ListView(
        children: [
          Stack(children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: double.infinity,
                    color: Colors.grey,
                    child: Image.asset(
                      "assets/images/modern.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 80,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          width: 140,
                          height: 80,
                          // color: Colors.grey,
                        ),
                        Expanded(
                            child: Container(
                          height: 80,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ElevatedButton(
                                onPressed: () {
                                  Get.to(() => SignupScreen());
                                },
                                child: Text(
                                  "LOGIN /SIGNUP",
                                  style: TextStyle(
                                      fontFamily: 'Nanum',
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 80,
              left: 20,
              child: Container(
                height: 105,
                width: 105,
                color: Colors.grey.withOpacity(0.6),
                child: Padding(
                  padding: const EdgeInsets.all(3.5),
                  child: Image.asset(
                    "assets/images/index.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ]),
          SizedBox(
            height: 16,
          ),
          Container(
            // height: 248,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      EvaIcons.shoppingBag,
                    ),
                  ),
                  //    trailing: Text(">"),
                  title: Text(
                    "Orders",
                    style: TextStyle(
                        fontFamily: 'Nanum', fontWeight: FontWeight.bold),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Check your order status",
                      style: TextStyle(
                          //   fontFamily: 'Maven',
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.help_center_outlined),
                  ),
                  //         trailing: Text(">"),
                  title: Text(
                    "Help Center",
                    style: TextStyle(
                        fontFamily: 'Nanum', fontWeight: FontWeight.bold),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Help regarding your recent purchases",
                      style: TextStyle(
                          fontSize: 12,
                          //   fontFamily: 'Maven',
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.favorite_border),
                  ),
                  //         trailing: Text(">"),
                  title: Text(
                    "Wishlist",
                    style: TextStyle(
                        fontFamily: 'Nanum', fontWeight: FontWeight.bold),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Your most loved products",
                      style: TextStyle(
                          fontSize: 12,
                          //   fontFamily: 'Maven',
                          fontWeight: FontWeight.normal,
                          color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            //  height: 200,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  leading: SizedBox(),
                  title: Text(
                    "FAQs",
                    style: TextStyle(
                        fontFamily: 'Nanum',
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: SizedBox(),
                  title: Text(
                    "About Us",
                    style: TextStyle(
                        fontFamily: 'Nanum',
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: SizedBox(),
                  title: Text(
                    "Contact Us",
                    style: TextStyle(
                        fontFamily: 'Nanum',
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: SizedBox(),
                  title: Text(
                    "Privacy Policy",
                    style: TextStyle(
                        fontFamily: 'Nanum',
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: SizedBox(),
                  title: Text(
                    "Terms of Use",
                    style: TextStyle(
                        fontFamily: 'Nanum',
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: SizedBox(),
                  title: Text(
                    "Return & Refund Policy",
                    style: TextStyle(
                        fontFamily: 'Nanum',
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: SizedBox(),
                  title: Text(
                    "Logout",
                    style: TextStyle(
                        fontFamily: 'Nanum',
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "App version 1.00",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Powered By",
                textAlign: TextAlign.center,
                style: TextStyle(

                    // fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Text(
                " kiteSpace",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.w400, color: Colors.blue),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}

Widget whiteTiles(
  String title,
  String subtitle,
  IconData icon,
  Function callback,
) {
  return ListTile(
    onTap: () {
      callback;
    },
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(icon),
    ),
    title: Text(
      title,
      style: TextStyle(fontFamily: 'Nanum', fontWeight: FontWeight.bold),
    ),
    subtitle: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        subtitle,
        style: TextStyle(
            //   fontFamily: 'Maven',
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.grey),
      ),
    ),
  );
}
