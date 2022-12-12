// block code
// BlocBuilder<CategoryCubit, CategoryState>(
// builder: (context, state) {
// print(state);
// if (state is CategorySuccess) {
// final listOfCategories = state.list;
// return Container(
// height: 100,
// child: ListView.builder(
// itemCount: listOfCategories.length,
// shrinkWrap: true,
// scrollDirection: Axis.horizontal,
// itemBuilder: (context, index) {
// return Container(
// height: 100,
// margin: EdgeInsets.symmetric(horizontal: 12),
// child: Column(
// children: [
// CircleAvatar(
// radius: 31,
// backgroundColor: Color(0xffEBF0FF),
// child: CircleAvatar(
// child: Image.network(
// listOfCategories[index].image,
// height: 25,
// width: 25,
// ),
// radius: 30,
// backgroundColor: Colors.white,
// ),
// ),
// SizedBox(height: 10),
// Text(
// listOfCategories[index].name,
// style: TextStyle(
// color: Color(0xff9098B1),
// ),
// ),
// ],
// ),
// );
// },
// ),
// );
// }
// return SizedBox();
// },
// ),

// category cubit
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';
//
// import '../../model/category_repo_model.dart';
// import '../../repository/category_repository.dart';
//
// part 'category_state.dart';
//
// class CategoryCubit extends Cubit<CategoryState> {
//   CategoryCubit() : super(CategoryInitial());
//
//   void getAllCategories() async {
//     final listOfCategories = await CategoryRepository().getAllCategories();
//
//     emit(CategorySuccess(listOfCategories));
//   }
//
//
//
// }

// category state
// part of 'category_cubit.dart';
//
// abstract class CategoryState {}
//
// class CategoryInitial extends CategoryState {}
//
// class CategoryNotFound extends CategoryState {}
//
// class CategorySuccess extends CategoryState {
//   List<CategoryRepoModel> list;
//   CategorySuccess(this.list);
//
// }
//
// class NoInternetConnection extends CategoryState {}
//
// class ErrorInCategory extends CategoryState {}