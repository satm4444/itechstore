import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itechstore/controllers/api_controller.dart';
import 'package:itechstore/screens/categories_screen.dart';
import 'package:itechstore/screens/fav_screen.dart';

import 'package:itechstore/screens/main_screen.dart';
import 'package:itechstore/screens/profile_screen.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  final ApiController api = Get.put(ApiController());
  int _currentIndex = 0;

  final tabs = [
    MainScreen(),
    CategoryScreen(),
    FavScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          //  elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black.withOpacity(0.3),
          selectedLabelStyle: TextStyle(
              fontFamily: 'Nanum', fontWeight: FontWeight.bold, fontSize: 13),
          unselectedLabelStyle: TextStyle(
              fontFamily: 'Nanum', fontWeight: FontWeight.bold, fontSize: 12),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                EvaIcons.homeOutline,
                size: 24,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
                size: 24,
              ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                //  EvaIcons.heart,
                Icons.favorite_border,
                size: 24,
              ),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                EvaIcons.person,
                size: 24,
              ),
              label: 'Account',
            ),
          ]),
    );
  }
}
