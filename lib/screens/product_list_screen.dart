import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:itechstore/controllers/api_controller.dart';
import 'package:itechstore/static/all_colors.dart';
import 'package:get/get.dart';
import 'package:itechstore/widgets/product_tile.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final ApiController apiData = Get.find();

  @override
  Widget build(BuildContext context) {
    var gotArg = Get.arguments;
    String gotCat = gotArg[0].toString();

    apiData.findByCategory(apiData.allProductList, gotCat);

    print(apiData.filteredList);

    return WillPopScope(
      onWillPop: () async {
        apiData.onScreenPopped();
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  EvaIcons.search,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  EvaIcons.options2Outline,
                  color: Colors.black,
                )),
          ],
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: false,
          backgroundColor: Colors.white,
          elevation: 0.3,
          title: Text(
            gotCat,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'RobotoM',
              fontSize: 20,
            ),
          ),
        ),
        body: Obx(() {
          return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.6,
                crossAxisSpacing: 0,
                mainAxisExtent: 250,
              ),
              itemCount: apiData.filteredList.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                return ProductTile(
                  pro: apiData.filteredList[index],
                );
              }));
        }),
      ),
    );
  }
}
