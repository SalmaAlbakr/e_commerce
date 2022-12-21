import 'package:bloc/bloc.dart';
import 'package:e_commerce/model/categoryProductModel.dart';
import 'package:e_commerce/repository/category_product_repositry.dart';
import 'package:meta/meta.dart';

part 'category_product_state.dart';

class CategoryProductCubit extends Cubit<CategoryProductState> {
  CategoryProductCubit() : super(CategoryProductInitial());

  void getAllCategoryProduct() async {

    final listOfCategoryProduct = await CategoryProductRepo().getCategoryProduct();
    emit(CategoryProductSuccesses(listOfCategoryProduct));
  }


}
