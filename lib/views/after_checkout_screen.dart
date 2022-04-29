import 'package:flutter/material.dart';
import 'package:itechstore/static/all_colors.dart';

class AfterCheckOutScreen extends StatefulWidget {
  const AfterCheckOutScreen({Key? key}) : super(key: key);

  @override
  State<AfterCheckOutScreen> createState() => _AfterCheckOutScreenState();
}

class _AfterCheckOutScreenState extends State<AfterCheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var bottomHeight = size.height * 0.08;
    return Scaffold(
      backgroundColor: Colorliney.scaffBack,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text(
          "Checkout",
          style: TextStyle(
              color: Colors.black87,
              fontFamily: 'Nanum',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          //first row
                          Container(
                            height: 50,
                            color: Colors.black.withOpacity(0.07),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // address section
                          Container(
                            height: 150,
                            color: Colors.black.withOpacity(0.07),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //contact number section
                          Container(
                            height: 50,
                            color: Colors.black.withOpacity(0.07),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //email section
                          Container(
                            height: 50,
                            color: Colors.black.withOpacity(0.07),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8, top: 15, bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              //      height: 10,
                              ),
                          Row(
                            children: [
                              Text(
                                "Number of items :",
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "4",
                                style: TextStyle(
                                  fontFamily: 'Nanum',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Expected delivery within 1-2 days",
                            style: TextStyle(
                              fontFamily: 'Nanum',
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
          Container(
            height: bottomHeight,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  height: bottomHeight,
                  width: size.width / 2,
                  //  color: Colors.black,
                  child: Column(
                    children: [
                      Container(
                        height: bottomHeight * 0.5,
                        width: size.width / 2,
                        // color: Colors.green,
                        child: Center(
                          child: Text(
                            "Total + Shipping Charge",
                            style: TextStyle(
                              fontFamily: 'Nanum',
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 24, top: 0),
                        height: bottomHeight * 0.5,
                        width: size.width / 2,
                        //  color: Colors.green,
                        child: Text(
                          "NPR. 200000",
                          style: TextStyle(
                            fontFamily: 'RobotoR',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.teal,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    height: bottomHeight,
                    width: size.width / 2,
                    //  color: Colors.teal,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Colors.blue),
                          onPressed: () {
                            //  Get.to(() => AfterCheckOutScreen());
                          },
                          child: Text(
                            "Proceed to Pay",
                            style: TextStyle(
                                fontFamily: 'Nanum',
                                fontWeight: FontWeight.bold),
                          )),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
