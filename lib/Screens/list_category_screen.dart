import 'package:e_commerce/Screens/Category_product-screen.dart';
import 'package:e_commerce/cubed/category_cubit/category_cubit.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCategoryScreen extends StatefulWidget {
  const ListCategoryScreen({Key? key}) : super(key: key);

  @override
  State<ListCategoryScreen> createState() => _ListCategoryScreenState();
}

class _ListCategoryScreenState extends State<ListCategoryScreen> {

  @override
  void initState() {
    context.read<CategoryCubit>().getAllCategories();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: buildAppBar(title: "Category",buttonAction:  (){}),
      body: BlocBuilder<CategoryCubit , CategoryState>
        (builder: (context, state){
        if (state is CategorySuccess){
          return ListView.builder(
            itemCount: state.list.length,
            itemBuilder: (BuildContext context, int item) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            CategoryProductScreen(
                                categoryName: state.list[item].name
                            ),
                      ),
                    );
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                        NetworkImage(state.list[item].image),
                        radius: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "${state.list[item].name}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        }
        return Center(child: CircularProgressIndicator());
      }),
    );
  }
}
