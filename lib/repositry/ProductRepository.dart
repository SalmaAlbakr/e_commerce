import 'package:dio/dio.dart';
import 'package:e_commerce/model/productModel.dart';

class ProductRepository {
  Future<List<ProductModel>> getAllProduct() async {
    final response = await Dio().get('https://dummyjson.com/products');
    // print("${response.data} response");

    final listOfProducts = List<ProductModel>.from(
      response.data['products'].map(
        (value) =>
           ProductModel(
            id: value['id'],
            price: value['price'],
            title: value['title'],
            description: value['description'],
            brand: value['brand'],
            category: value['category'],
            thumbnail: value['thumbnail'],
            image: value['images'],
            discountPercentage: value['discountPercentage'],
            rating: value['rating'].toDouble(),
            stock: value['stock'],
          ),
      ),
    );
   //print(listOfProducts);
    return listOfProducts;
  }
}
