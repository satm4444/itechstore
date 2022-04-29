import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:itechstore/static/all_colors.dart';

class AddEditBilling extends StatefulWidget {
  const AddEditBilling({Key? key}) : super(key: key);

  @override
  State<AddEditBilling> createState() => _AddEditBillingState();
}

class _AddEditBillingState extends State<AddEditBilling> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colorliney.scaffBack,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0.5,
          title: Text(
            "ADD/EDIT",
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Nanum',
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
                //  height: 300,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Billing Details",
                        style: TextStyle(
                            fontFamily: "RobotoR",
                            fontSize: 20,
                            color: Color.fromARGB(255, 6, 122, 218)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        maxLines: 3,
                        decoration:
                            InputDecoration(hintText: 'Your current address'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        keyboardType: TextInputType.phone,
                        decoration:
                            InputDecoration(hintText: 'Your phone number'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration:
                            InputDecoration(hintText: 'Your email address'),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                          color: Colors.blue,
                          width: size.width,
                          height: 45,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("SUBMIT"))),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
