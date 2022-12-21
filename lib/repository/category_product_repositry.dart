import 'package:dio/dio.dart';
import 'package:e_commerce/model/categoryProductModel.dart';

class CategoryProductRepo {
  Future<List<CategoryProductModel>> getCategoryProduct() async {
    final response = await Dio()
        .get("https://mocki.io/v1/e5775744-06ba-4306-b6f6-93055de3c2d5");
        //.get("https://dummyjson.com/products/category/groceries");
    final categoryProduct =  List<CategoryProductModel>.from(response.data.map((x) => CategoryProductModel.fromJson(x)));
    return categoryProduct;

  }
}
