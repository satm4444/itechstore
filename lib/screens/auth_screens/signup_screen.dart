import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itechstore/widgets/bottom_nav_bar_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/itech.png',
                      // fit: BoxFit.scaleDown,
                    )),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.black.withOpacity(0.03),
                      filled: true,
                      hintText: "Enter email",
                      suffixIcon: Icon(EvaIcons.person)),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email';
                    }
                    return null;
                  },
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.black.withOpacity(0.03),
                      filled: true,
                      hintText: "Enter password",
                      suffixIcon: Icon(Icons.password)),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.black.withOpacity(0.03),
                    filled: true,
                    hintText: "Confirm password",
                    suffixIcon: Icon(Icons.password),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter correct password';
                    }
                    return null;
                  },
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 44,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.off(() => BottomNavBarWidget());
                      },
                      child: Text(
                        'SignUp',
                        style: TextStyle(
                            fontFamily: 'Nanum',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      )),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account ?",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Nanum',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Nanum',
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
