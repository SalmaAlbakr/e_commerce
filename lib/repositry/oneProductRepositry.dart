import 'package:dio/dio.dart';
import 'package:e_commerce/model/onePoduct_model.dart';

class OneProduct{
  Future<singleProduct> getProduct(String id) async {
    final response = await Dio().get("https://dummyjson.com/products/$id");
    print(response.data);
    final oneProduct = singleProduct.fromJson(response.data);
      print(oneProduct);
    return oneProduct;
  }
}
