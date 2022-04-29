import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itechstore/screens/add_edit_billing.dart';

import 'package:itechstore/static/all_colors.dart';

class AfterCheckOutScreen extends StatefulWidget {
  const AfterCheckOutScreen({Key? key}) : super(key: key);

  @override
  State<AfterCheckOutScreen> createState() => _AfterCheckOutScreenState();
}

class _AfterCheckOutScreenState extends State<AfterCheckOutScreen> {
  String paymentType = 'cod';
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
        titleSpacing: 0,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 7,
                          ),
                          //first row
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Billing Details",
                              style: TextStyle(
                                  fontFamily: "RobotoR",
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 6, 122, 218)),
                            ),
                          ),
                          Divider(),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Satyam Rawal",
                                  style: TextStyle(
                                      fontFamily: "RobotoR",
                                      //  fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.to(() => AddEditBilling());
                                },
                                child: Text(
                                  "ADD/EDIT",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          // address section
                          Row(
                            children: [
                              Container(
                                  //      color: Colors.blue,
                                  width: size.width * 0.1,
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.lightBlue,
                                  )),
                              Expanded(
                                child: Container(
                                  //  height: 50,

                                  child: Text(
                                    "Narayan Gopal Chowk, Basundhara near Gateway College, Kathmandu",
                                    style: TextStyle(
                                      fontFamily: 'Nanum',
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //contact number section
                          Row(
                            children: [
                              Container(
                                  //      color: Colors.blue,
                                  width: size.width * 0.1,
                                  child: Icon(
                                    Icons.phone,
                                    size: 20,
                                    color: Colors.lightBlue,
                                  )),
                              Expanded(
                                child: Container(
                                  //  height: 50,

                                  child: Text(
                                    "+977 9868768895",
                                    style: TextStyle(
                                      fontFamily: 'Nanum',
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //email section
                          Row(
                            children: [
                              Container(
                                  //      color: Colors.blue,
                                  width: size.width * 0.1,
                                  child: Icon(
                                    Icons.mail,
                                    color: Colors.lightBlue,
                                    size: 20,
                                  )),
                              Expanded(
                                child: Container(
                                  //  height: 50,

                                  child: Text(
                                    "rawalsatyam018@gmail.com",
                                    style: TextStyle(
                                      fontFamily: 'Nanum',
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Number of items :",
                                  style: TextStyle(
                                    fontFamily: 'NRobotoRanum',
                                    //   fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
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
                                  fontSize: 15,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Expected delivery within 1-2 days",
                              style: TextStyle(
                                fontFamily: 'RobotoR',
                                // fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // height: 180,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          //first row
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Payment Options",
                              style: TextStyle(
                                  fontFamily: "RobotoR",
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                          Divider(),

                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.black,
                                value: 'cod',
                                groupValue: paymentType,
                                onChanged: (value) {
                                  setState(() {
                                    paymentType = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "Cash On Delivery",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Nanum',
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),

                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.purple,
                                value: 'khalti',
                                groupValue: paymentType,
                                onChanged: (value) {
                                  setState(() {
                                    paymentType = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "Pay with  ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Nanum',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                  height: 30,
                                  width: 70,
                                  child:
                                      Image.asset("assets/images/khalti.png"))
                            ],
                          ),

                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.green,
                                value: 'esewa',
                                groupValue: paymentType,
                                onChanged: (value) {
                                  setState(() {
                                    paymentType = value.toString();
                                  });
                                },
                              ),
                              Text(
                                "Pay with  ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Nanum',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                  height: 30,
                                  width: 30,
                                  child: Image.asset("assets/images/esewa.png"))
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 6, 122, 218)),
                          onPressed: () {},
                          child: Text(
                            "Confirm Order",
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
