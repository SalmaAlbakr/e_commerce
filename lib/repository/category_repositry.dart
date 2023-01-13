import 'package:dio/dio.dart';
import 'package:e_commerce/model/category_model.dart';

class CatRepo {
  Future<List<CategoryModel>> getAllCat() async {
    final response =
    await Dio().get("https://api.escuelajs.co/api/v1/categories/");

    final listOfCat = List<CategoryModel>.from(
      response.data.map(
        (value) => CategoryModel(
          id: value["id"],
          name: value["name"],
          image: value["image"],
        ),
      ),
    );
    return listOfCat;
  }
}