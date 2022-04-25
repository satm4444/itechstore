import 'package:flutter/material.dart';
import 'package:itechstore/static/all_colors.dart';
import 'package:itechstore/widgets/cart_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
          "My Cart",
          style: TextStyle(
              color: Colors.black87,
              fontFamily: 'Nanum',
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            height: 20,
            width: 60,
            //color: Colors.teal,
            child: Center(
              child: Text(
                'Delete',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'RobotoR',
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CartItem(),
                    CartItem(),
                    CartItem(),
                    CartItem(),
                  ],
                ),
              ),
            ),
          ),
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
                        )),
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
                            color: Colors.blue,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    height: bottomHeight,
                    width: size.width / 2,
                    //    color: Colors.teal,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "CheckOut",
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
