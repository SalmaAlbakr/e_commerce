// To parse this JSON data, do
//
//     final onePoduct = onePoductFromJson(jsonString);

import 'dart:convert';

OnePoduct onePoductFromJson(String str) => OnePoduct.fromJson(json.decode(str));

String onePoductToJson(OnePoduct data) => json.encode(data.toJson());

class OnePoduct {
  OnePoduct({
  required  this.products,
  required  this.total,
  required  this.skip,
  required  this.limit,
  });

  List<singleProduct> products;
  int total;
  int skip;
  int limit;

  factory OnePoduct.fromJson(Map<String, dynamic> json) => OnePoduct(
    products: List<singleProduct>.from(json["products"].map((x) => singleProduct.fromJson(x))),
    total: json["total"],
    skip: json["skip"],
    limit: json["limit"],
  );

  Map<String, dynamic> toJson() => {
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
    "total": total,
    "skip": skip,
    "limit": limit,
  };
}

class singleProduct {
  singleProduct({
   required this.id,
   required this.title,
   required this.description,
   required this.price,
   required this.discountPercentage,
   required this.rating,
   required this.stock,
   required this.brand,
   required this.category,
   required this.thumbnail,
   required this.images,
  });

  int id;
  String title;
  String description;
  int price;
  double discountPercentage;
  double rating;
  int stock;
  String brand;
  String category;
  String thumbnail;
  List<String> images;

  factory singleProduct.fromJson(Map<String, dynamic> json) => singleProduct(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    price: json["price"],
    discountPercentage: json["discountPercentage"].toDouble(),
    rating: json["rating"].toDouble(),
    stock: json["stock"],
    brand: json["brand"],
    category: json["category"],
    thumbnail: json["thumbnail"],
    images: List<String>.from(json["images"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "price": price,
    "discountPercentage": discountPercentage,
    "rating": rating,
    "stock": stock,
    "brand": brand,
    "category": category,
    "thumbnail": thumbnail,
    "images": List<dynamic>.from(images.map((x) => x)),
  };
}
