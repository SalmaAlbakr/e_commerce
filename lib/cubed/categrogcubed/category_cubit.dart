import 'package:bloc/bloc.dart';
import 'package:e_commerce/model/categoryRepoModel.dart';
import 'package:e_commerce/repositry/categoryRepositry.dart';
import 'package:meta/meta.dart';
part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());
void getAllCategories() async{

  final listOfCategory = await CatRepo().getAllCat();
  emit(CategorySuccess(listOfCategory));

}

}
