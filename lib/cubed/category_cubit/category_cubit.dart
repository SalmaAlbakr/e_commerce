import 'package:bloc/bloc.dart';
import 'package:e_commerce/model/category_model.dart';
import 'package:e_commerce/repository/category_repositry.dart';
import 'package:meta/meta.dart';
part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());
void getAllCategories() async{

  final listOfCategory = await CatRepo().getAllCat();
  emit(CategorySuccess(listOfCategory));

}

}
