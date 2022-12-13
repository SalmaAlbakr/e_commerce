import 'package:dio/dio.dart';
import 'package:e_commerce/category_product_test/model.dart';


class ProductRepoTest {
  Future<List<CategoryProductTest>> getTestProduct () async {
    final response = await Dio()
        .get("https://mocki.io/v1/e5775744-06ba-4306-b6f6-93055de3c2d5");
    // print(response);
    final testProduct = List<CategoryProductTest>.from(
      response.data.map(
          (value) => CategoryProductTest(
              id: value["id"],
              name: value["name"],
              image: value["image"]),
      )
    );
    // print(testProduct);
    return testProduct;
  }
}

// void main() {
//   ProductRepoTest().getTestProduct();
// }