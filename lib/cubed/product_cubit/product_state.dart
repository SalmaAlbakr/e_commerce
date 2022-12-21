part of 'product_cubit.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductSuccesses extends ProductState {
  final List<ProductModel> productList;

  ProductSuccesses(this.productList);
}
