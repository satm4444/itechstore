import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:itechstore/models/product_model.dart';
import 'package:get/get.dart';
import 'package:itechstore/screens/product_detail_screen.dart';

class ProductTile extends StatefulWidget {
  final Product pro;
  const ProductTile({Key? key, required this.pro}) : super(key: key);

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => ProductDetailScreen(), arguments: [widget.pro.id]);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
          color: Colors.black.withOpacity(0.04),
        )),
        margin: EdgeInsets.all(5),
        height: 250,
        width: 130,
        //  color: Colors.black.withOpacity(0.07),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 120,
                width: double.infinity,
                //  color: Colors.blue,
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/loading1.gif',
                  image: widget.pro.productImage,
                  fit: BoxFit.contain,
                )),
            SizedBox(
              height: 7.5,
            ),
            Container(
              height: 45,
              //   color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.pro.name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontFamily: 'Nanum',
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.black),
                ),
              ),
            ),
            Container(
              height: 25,
              //color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Rs. ${widget.pro.price.toString()}',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontFamily: 'RobotoR',
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Center(
                child: Container(
                  //     color: Colors.red,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 30,
                  width: 140,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.black,
                    ),
                    icon: Icon(
                      EvaIcons.shoppingCart,
                      color: Colors.white,
                      size: 17,
                    ),
                    onPressed: () {},
                    label: Text(
                      "Add to Cart",
                      style: TextStyle(
                          fontFamily: 'Nanum',
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
