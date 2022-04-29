import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itechstore/controllers/api_controller.dart';
import 'package:itechstore/models/carousel_model.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final List<CarouselModel> listImages = [
    CarouselModel(
      productId: 'Second',
      imageUrl:
          'https://sgp1.digitaloceanspaces.com/awe/itech/items/Asus_rog_Zephyrus_g14_amd_ryzen_9_4900_gaming-laptop.jpg',
    ),
    CarouselModel(
      productId: 'Third',
      imageUrl:
          'https://sgp1.digitaloceanspaces.com/awe/itech/items/41d8Xe4laSL._SL500_.jpg',
    ),
  ];
  final ApiController apiController = Get.find();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var bottomHeight = size.height * 0.06;
    var getId = Get.arguments;
    var gotId = getId[0];
    final foundProduct = apiController.findSingleProduct(gotId);
    int? _current = 0;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: size.width,
                child: ListView(
                  children: [
                    Stack(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 180,
                            aspectRatio: 16 / 9,
                            viewportFraction: 1,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            },
                            autoPlayInterval: Duration(seconds: 8),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 1500),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            scrollDirection: Axis.horizontal,
                          ),
                          items: listImages.map((i) {
                            int ind = listImages.indexOf(i);
                            //    print(ind);
                            return Builder(
                              builder: (BuildContext context) {
                                return InkWell(
                                  onTap: () {
                                    Get.to(() => ProductDetailScreen(),
                                        arguments: [i.productId]);
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        //   borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: ClipRRect(
                                      //  borderRadius: BorderRadius.circular(5),
                                      child: Image.network(
                                        i.imageUrl,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                        Positioned(
                          top: 155,
                          child: Container(
                            height: 20,
                            width: size.width,
                            //  color: Colors.red,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: listImages.map((e) {
                                  int index = listImages.indexOf(e);

                                  return Container(
                                    margin: EdgeInsets.only(right: 5),
                                    height: 7,
                                    width: 7,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: _current == index
                                            ? Colors.black
                                            : Colors.grey),
                                  );
                                }).toList()),
                          ),
                        ),
                        Positioned(
                            top: 10,
                            // left: 10,
                            child: Container(
                              height: 50,
                              width: size.width,
                              decoration: BoxDecoration(
                                  // color: Colors.blue,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      icon: Icon(Icons.arrow_back)),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        EvaIcons.shoppingCart,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    // first container---for title and price
                    Container(
                      padding: EdgeInsets.only(left: 12, right: 12, top: 12),
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              foundProduct.name,
                              style: TextStyle(
                                fontFamily: 'RobotoL',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rs. ${foundProduct.price.toString()}',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  fontFamily: 'RobotoR',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.pink,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  //  EvaIcons.heart,
                                  Icons.favorite_border,
                                  size: 24,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),

                    //second container---for description

                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 12, left: 12, right: 12, bottom: 16),
                      // height: 300,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Product Description',
                              style: TextStyle(
                                fontFamily: 'RobotoL',
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              foundProduct.description,
                              style: TextStyle(
                                fontSize: 14,
                                //fontFamily: 'Nanum',
                                letterSpacing: 0.2,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //second container---for specs

                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 12, left: 12, right: 12, bottom: 16),
                      // height: 300,
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Product Specification',
                              style: TextStyle(
                                fontFamily: 'RobotoL',
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(),
                          Image.asset("assets/images/spec.png")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 80,
                      width: size.width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delivery Details",
                              style: TextStyle(
                                fontFamily: 'RobotoL',
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "1 to 2 Days after the order is placed",
                              style: TextStyle(
                                fontFamily: 'RobotoR',
                                fontSize: 14,
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      //height: 80,
                      width: size.width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Payment Options",
                              style: TextStyle(
                                fontFamily: 'RobotoL',
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Cash on Delivery available",
                              style: TextStyle(
                                fontFamily: 'RobotoR',
                                fontSize: 14,
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Or pay with eWallet : Khalti",
                              style: TextStyle(
                                fontFamily: 'RobotoR',
                                fontSize: 14,
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
//bottom bar

            Container(
              height: bottomHeight,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                      height: bottomHeight,
                      width: size.width / 2,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                            fontFamily: 'Maven',
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                  Container(
                      height: bottomHeight,
                      width: size.width / 2,
                      color: Color.fromARGB(255, 221, 31, 18),
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                            fontFamily: 'Maven',
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
