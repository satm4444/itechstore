import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itechstore/controllers/api_controller.dart';
import 'package:itechstore/models/carousel_model.dart';

import 'package:itechstore/static/all_colors.dart';
import 'package:itechstore/views/product_detail_screen.dart';
import 'package:itechstore/views/product_list_screen.dart';
import 'package:itechstore/widgets/banner_widget.dart';
import 'package:itechstore/widgets/product_tile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ApiController apiData = Get.find();
  final List<CarouselModel> listImages = [
    CarouselModel(
      productId: 'First',
      imageUrl:
          'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/macbook-pro-13-og-202011?wid=600&hei=315&fmt=jpeg&qlt=95&.v=1604347427000',
    ),
    CarouselModel(
      productId: 'Second',
      imageUrl:
          'https://www.gadgetbytenepal.com/wp-content/uploads/2019/01/Alienware-Area-51m-696x364.jpg',
    ),
    CarouselModel(
      productId: 'Second',
      imageUrl:
          'https://assets2.razerzone.com/images/og-image/new-razer-blade-15-OG-1200x630.jpg',
    ),
    CarouselModel(
      productId: 'Second',
      imageUrl: 'https://pbs.twimg.com/media/DMb1rl8UIAE9NT0.jpg:large',
    ),
    CarouselModel(
      productId: 'Second',
      imageUrl:
          'https://m.media-amazon.com/images/I/514h4wuJKWL._AC_SL1500_.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorliney.scaffBack,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.3,
        //   centerTitle: true,
        title: Container(
          height: 30,
          width: 150,
          //color: Colors.grey,
          child: Row(
            children: [
              Container(
                decoration:
                    BoxDecoration(color: Colors.black, border: Border.all()),
                child: Text(
                  " iTech ",
                  style: TextStyle(
                      fontFamily: 'RobotoR',
                      //  letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white,
                      backgroundColor: Colors.black),
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all()),
                child: Center(
                  child: Text(
                    " Store ",
                    style: TextStyle(
                        //   letterSpacing: 1,
                        fontSize: 24,
                        fontFamily: 'RobotoR',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        backgroundColor: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
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
                EvaIcons.shoppingCart,
                color: Colors.black,
              )),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 160,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: listImages.map((i) {
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
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          i.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 15,
          ),

          //====================LAPTOPS SECTION
          Container(
            child: Column(
              children: [
                Container(
                  height: 45,
                  //   color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Laptops",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'RobotoM',
                            fontSize: 20,
                            //  fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => ProductListScreen(),
                                arguments: ['Laptops']);
                          },
                          child: Text(
                            "more",
                            style: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Nanum',
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 240,
                  child: Obx(() {
                    return ListView.builder(
                        itemCount: apiData.laptops.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return ProductTile(
                            pro: apiData.laptops[index],
                          );
                        }));
                  }),
                )
              ],
            ),
            height: 300,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),

          //=======================UPCOMING PRODCUTS SECTION
          Container(
            child: Column(
              children: [
                Container(
                  height: 45,
                  //color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Upcoming Items",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'RobotoM',
                            fontSize: 20,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "more",
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Nanum',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 240,
                  child: Obx(
                    () {
                      return ListView.builder(
                          itemCount: apiData.allProductList.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: ((context, index) {
                            return ProductTile(
                              pro: apiData.allProductList[index],
                            );
                          }));
                    },
                  ),
                )
              ],
            ),
            height: 300,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),

          ///==========================BANNER AD SECTION
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            // color: Colors.red,
            child: ListView.builder(
                itemCount: listImages.length,
                scrollDirection: Axis.horizontal,
                //  shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return BannerWidget(
                    car: listImages[index],
                  );
                })),
          ),
          //   Divider(),
          SizedBox(
            height: 15,
          ),
          //=============================FESTIVAL OFFER SECTION
          Container(
            child: Column(
              children: [
                Container(
                  height: 45,
                  //color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Festival Offer",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'RobotoM',
                            fontSize: 20,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "more",
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Nanum',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 240,
                  child: Obx(
                    () {
                      return ListView.builder(
                          itemCount: apiData.allProductList.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: ((context, index) {
                            return ProductTile(
                              pro: apiData.allProductList[index],
                            );
                          }));
                    },
                  ),
                )
              ],
            ),
            height: 300,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),

          //=============================TABLET AND SMARTPHONE SECTION
          Container(
            child: Column(
              children: [
                Container(
                  height: 45,
                  //color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Table & Smartphones",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'RobotoM',
                            fontSize: 20,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "more",
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Nanum',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 240,
                  child: Obx(
                    () {
                      return ListView.builder(
                          itemCount: apiData.allProductList.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: ((context, index) {
                            return ProductTile(
                              pro: apiData.allProductList[index],
                            );
                          }));
                    },
                  ),
                )
              ],
            ),
            height: 300,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Image.asset('assets/images/itt.png'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          //=============================ACCESSORIES SECTION
          Container(
            child: Column(
              children: [
                Container(
                  height: 45,
                  //color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Accessories",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'RobotoM',
                            fontSize: 20,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "more",
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Nanum',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 240,
                  child: Obx(
                    () {
                      return ListView.builder(
                          itemCount: apiData.allProductList.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: ((context, index) {
                            return ProductTile(
                              pro: apiData.allProductList[index],
                            );
                          }));
                    },
                  ),
                )
              ],
            ),
            height: 300,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),
          //=============================CABLE AND EXTENSION SECTION
          Container(
            child: Column(
              children: [
                Container(
                  height: 45,
                  //color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cable & Extensions",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'RobotoM',
                            fontSize: 20,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "more",
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Nanum',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 240,
                  child: Obx(
                    () {
                      return ListView.builder(
                          itemCount: apiData.allProductList.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: ((context, index) {
                            return ProductTile(
                              pro: apiData.allProductList[index],
                            );
                          }));
                    },
                  ),
                )
              ],
            ),
            height: 300,
            width: double.infinity,
            color: Colors.white,
          ),
          //=============================USB HUB AND CONVERTOR SECTION
          Container(
            child: Column(
              children: [
                Container(
                  height: 45,
                  //color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Usb Hub & Convertor",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'RobotoM',
                            fontSize: 20,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "more",
                          style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Nanum',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 240,
                  child: Obx(
                    () {
                      return ListView.builder(
                          itemCount: apiData.allProductList.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: ((context, index) {
                            return ProductTile(
                              pro: apiData.allProductList[index],
                            );
                          }));
                    },
                  ),
                )
              ],
            ),
            height: 300,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff1D293A),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        height: 30,
                        width: 150,
                        //color: Colors.grey,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.black, border: Border.all()),
                              child: Text(
                                " iTech ",
                                style: TextStyle(
                                    fontFamily: 'RobotoR',
                                    //  letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Colors.white,
                                    backgroundColor: Colors.black),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(border: Border.all()),
                              child: Center(
                                child: Text(
                                  " Store ",
                                  style: TextStyle(
                                      //   letterSpacing: 1,
                                      fontSize: 24,
                                      fontFamily: 'RobotoR',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      backgroundColor: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                      width: double.infinity,
                      child: Text(
                        "Your source for all kinds of computers, laptops, accessories, and electronics in Nepal. ",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontFamily: 'Nanum',
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.white),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
