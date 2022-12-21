import 'package:dio/dio.dart';
import 'package:e_commerce/model/cart_model.dart';

class CartTitleRepo {

  Future<CartTitle> getProductTitle() async {
    final response = await Dio().get("https://dummyjson.com/carts/1");
print(response);

    final CartTitleList = CartTitle(
      id: response.data["id"],
      products:
          List<CartOneProduct>.from(response.data["products"].map((value) {
        return CartOneProduct(
            id: value["id"],
            title: value["title"],
            price: value["price"],
            quantity: value["quantity"],
            total: value["total"],
            discountedPercentage: value["discountPercentage"],
            discountedPrice: value["discountedPrice"]);
      })),
      total: response.data["total"],
      discountedTotal: response.data["discountedTotal"],
      userid: response.data["userId"],
      totalProducts: response.data["totalProducts"],
      totalQuantity: response.data["totalQuantity"],
    );

    return CartTitleList;
  }
}


void main() {
  CartTitleRepo().getProductTitle();
}