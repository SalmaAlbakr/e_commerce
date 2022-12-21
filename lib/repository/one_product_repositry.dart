import 'package:dio/dio.dart';
import 'package:e_commerce/model/one_product_model.dart';

class OneProduct{
  Future<singleProduct> getProduct(String id) async {
    final response = await Dio().get("https://dummyjson.com/products/$id");

    final oneProduct = singleProduct.fromJson(response.data);


    return oneProduct;
  }
}
