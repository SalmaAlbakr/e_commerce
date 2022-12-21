part of 'category_product_cubit.dart';

@immutable
abstract class CategoryProductState {}

class CategoryProductInitial extends CategoryProductState {
}

class CategoryProductSuccesses extends CategoryProductState {
  List<CategoryProductModel> categoryProList;

  CategoryProductSuccesses(this.categoryProList);
}
