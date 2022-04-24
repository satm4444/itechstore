class Product {
  final int id;
  final String name;
  final String category;
  final String description;
  final String productImage;
  final int price;
  final String specImageURL;
  final bool isFav;

  Product(
      {required this.id,
      required this.name,
      required this.category,
      required this.description,
      required this.productImage,
      required this.price,
      required this.specImageURL,
      required this.isFav});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'],
        name: json['name'],
        category: json['category'],
        description: json['description'],
        productImage: json['productImage'],
        price: json['price'],
        specImageURL: json['specImageURL'],
        isFav: json['isFav'],
      );
}
