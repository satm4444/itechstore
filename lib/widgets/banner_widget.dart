import 'package:flutter/material.dart';
import 'package:itechstore/models/carousel_model.dart';

class BannerWidget extends StatefulWidget {
  final CarouselModel car;
  const BannerWidget({Key? key, required this.car}) : super(key: key);

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      //  color: Colors.blue,
      child: Image.network(
        widget.car.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
