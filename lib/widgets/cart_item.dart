import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  final bool isDelete;
  const CartItem({Key? key, required this.isDelete}) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  int item = 1;

  void increaseItem() {
    setState(() {
      item = item + 1;
    });
  }

  void decreaseItem() {
    setState(() {
      item = item - 1;
      if (item == 0) {
        item = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var leftAfterPad = (size.width * 0.7) - 20;
    return Column(
      children: [
        Container(
          height: 120,
          width: size.width,
          color: Colors.white,
          child: Row(
            children: [
              Container(
                  height: 120,
                  width: size.width * 0.3,
                  // color: Colors.blue,
                  child: Image.network(
                      'https://sgp1.digitaloceanspaces.com/awe/itech/__sized__/items/02_HRmvEk4-thumbnail-400x315-70.JPG')),
              Container(
                height: 120,
                width: leftAfterPad,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 4, top: 12, right: 4),
                      height: 70,
                      width: leftAfterPad,
                      //  color: Colors.yellow,
                      child: Text(
                        "Nvidia GTX 3060 Ti 16gb FOR 2k gaming supports both ryzen and intel Needs 16 gb memory for 120 fps gameplays.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Nanum',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: leftAfterPad,
                      //  color: Colors.red,
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: leftAfterPad / 2,
                            // color: Colors.green,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Text(
                                'NPR. 150000',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  fontFamily: 'RobotoR',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.pink,
                                ),
                              ),
                            ),
                          ),
                          widget.isDelete
                              ? Container(
                                  height: 50,
                                  //color: Colors.blue,
                                  width: leftAfterPad / 2,
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.delete_forever_outlined,
                                          color: Colors.red,
                                        )),
                                  ),
                                )
                              : Container(
                                  height: 50,
                                  width: leftAfterPad / 2,
                                  child: Row(children: [
                                    GestureDetector(
                                      onTap: () => decreaseItem(),
                                      child: Container(
                                        width: (leftAfterPad / 2) / 3,
                                        //color: Colors.blue,
                                        child: Center(
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                              fontSize: 40,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: (leftAfterPad / 2) / 3,
                                      color: Colors.black.withOpacity(0.04),
                                      child: Center(
                                        child: Text(
                                          item.toString(),
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () => increaseItem(),
                                      child: Container(
                                          width: (leftAfterPad / 2) / 3,
                                          //   color: Colors.red,
                                          child: Center(
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.black,
                                              ),
                                            ),
                                          )),
                                    )
                                  ]),
                                ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
