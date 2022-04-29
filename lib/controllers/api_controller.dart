import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:itechstore/models/product_model.dart';

class ApiController extends GetxController {
  var allProductList = <Product>[].obs;
  var filteredList = <Product>[].obs;

//for mainscren
  var laptops = <Product>[].obs;
  void findLaptops(List<Product> proLists, String categoryname) {
    final foundList = allProductList.where((p0) => p0.category == categoryname);
    laptops.addAll(foundList);
  }

  void onScreenPopped() {
    filteredList.value = [];
  }

  //for finding single product
  Product findSingleProduct(int id) {
    return allProductList.firstWhere((element) => element.id == id);
  }

//for finding product list to display after a category is clicked
  void findByCategory(List<Product> proLists, String categoryname) {
    final foundList = allProductList.where((p0) => p0.category == categoryname);
    filteredList.addAll(foundList);
  }

  String apiUrl =
      "https://my-json-server.typicode.com/satm4444/fakeapi/products";

  @override
  void onInit() async {
    await getData();
    findLaptops(allProductList, 'Laptops');
    super.onInit();
  }

  //==FOR FETCHING THE DATA FROM THE API==//
  Future<void> getData() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      var loadedData = <Product>[].obs;
      final jsonData = jsonDecode(response.body);

      jsonData.forEach((json) {
        loadedData.add(Product(
          id: json['id'] ?? '',
          name: json['name'] ?? '',
          category: json['category'] ?? '',
          description: json['description'] ?? '',
          productImage: json['productImage'] ?? '',
          price: json['price'] ?? '',
          specImageURL: json['specImageURL'] ?? '',
          isFav: json['isFav'] ?? '',
        ));
      });

      allProductList.addAll(loadedData);
      //   print(loadedData);
    } catch (e) {
      print(e);
    }
  }
}
