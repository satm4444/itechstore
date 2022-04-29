import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:itechstore/controllers/api_controller.dart';
import 'package:itechstore/screens/auth_screens/signup_screen.dart';
import 'package:itechstore/screens/main_screen.dart';
import 'package:itechstore/widgets/bottom_nav_bar_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    ));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'itechstore',
      theme: ThemeData().copyWith(
        colorScheme: ThemeData()
            .colorScheme
            .copyWith(primary: Colors.black, secondary: Colors.white),
        errorColor: Colors.red,
      ),
      home: BottomNavBarWidget(),
    );
  }
}
