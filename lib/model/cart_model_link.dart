// To parse this JSON data, do
//
//     final cartModel = cartModelFromJson(jsonString);

import 'dart:convert';

CartModel cartModelFromJson(String str) => CartModel.fromJson(json.decode(str));

String cartModelToJson(CartModel data) => json.encode(data.toJson());

class CartModel {
  CartModel({
   required this.id,
   required this.products,
   required this.total,
   required this.discountedTotal,
   required this.userId,
   required this.totalProducts,
   required this.totalQuantity,
  });

  int id;
  List<SingleCartProduct> products;
  int total;
  int discountedTotal;
  int userId;
  int totalProducts;
  int totalQuantity;

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
    id: json["id"],
    products: List<SingleCartProduct>.from(json["products"].map((x) => SingleCartProduct.fromJson(x))),
    total: json["total"],
    discountedTotal: json["discountedTotal"],
    userId: json["userId"],
    totalProducts: json["totalProducts"],
    totalQuantity: json["totalQuantity"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
    "total": total,
    "discountedTotal": discountedTotal,
    "userId": userId,
    "totalProducts": totalProducts,
    "totalQuantity": totalQuantity,
  };
}

class SingleCartProduct {
  SingleCartProduct({
  required  this.id,
  required  this.title,
  required  this.price,
  required  this.quantity,
  required  this.total,
  required  this.discountPercentage,
  required  this.discountedPrice,
  });

  int id;
  String title;
  int price;
  int quantity;
  int total;
  double discountPercentage;
  int discountedPrice;

  factory SingleCartProduct.fromJson(Map<String, dynamic> json) => SingleCartProduct(
    id: json["id"],
    title: json["title"],
    price: json["price"],
    quantity: json["quantity"],
    total: json["total"],
    discountPercentage: json["discountPercentage"].toDouble(),
    discountedPrice: json["discountedPrice"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "quantity": quantity,
    "total": total,
    "discountPercentage": discountPercentage,
    "discountedPrice": discountedPrice,
  };
}

