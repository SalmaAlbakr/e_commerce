import 'package:e_commerce/cubed/categoryProductCubit/category_product_cubit.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/themes/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryProductScreen extends StatefulWidget {
  String categoryName;
  CategoryProductScreen({Key? key, required this.categoryName})
      : super(key: key);

  @override
  State<CategoryProductScreen> createState() => _CategoryProductScreenState();
}

class _CategoryProductScreenState extends State<CategoryProductScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CategoryProductCubit>().getAllCategoryProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(title: "${widget.categoryName} category" ,buttonAction:  (){Navigator.pop(context);}),
      body: BlocBuilder<CategoryProductCubit , CategoryProductState>
          (builder: (context, state){
          if (state is CategoryProductSuccesses){
           final categoryList = state.categoryProList;
            return GridView.builder(
                itemCount: categoryList.length,
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (BuildContext context, int item) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    decoration:
                    BoxDecoration(border: Border.all(color: MyColor.gray)),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          child: Image.network(
                            categoryList[item].image,
                            // "assets/images/image Product.png"
                          ),
                        ),
                        Text(
                          categoryList[item].name,
                          //"FS-Nike Air",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$299.43",
                          style: TextStyle(
                            color: MyColor.blue,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "\$ 534.33",
                              style: TextStyle(
                                  color: MyColor.gray,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text(
                              "24% off",
                              style: TextStyle(
                                color: MyColor.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                });
          }
          return Center(child: CircularProgressIndicator());
        })

        // FutureBuilder<List<CategoryProductModel>>(
        //   future: CategoryProductRepo().getCategoryProduct(),
        //     builder: (BuildContext context ,AsyncSnapshot<List<CategoryProductModel>> snapshot){
        //       if (snapshot.connectionState == ConnectionState.done) {
        //         final ListCat = snapshot.data;
        //         return GridView.builder(
        //             itemCount: ListCat!.length,
        //             gridDelegate:
        //             SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        //             itemBuilder: (BuildContext context, int item) {
        //               return Container(
        //                 margin: EdgeInsets.all(5),
        //                 decoration:
        //                 BoxDecoration(border: Border.all(color: MyColor.gray)),
        //                 child: Column(
        //                   children: [
        //                     Container(
        //                       height: 100,
        //                       child: Image.network(
        //                         ListCat[item].image,
        //                          // "assets/images/image Product.png"
        //                       ),
        //                     ),
        //                     Text(
        //                       ListCat[item].name,
        //                       //"FS-Nike Air",
        //                       style: TextStyle(
        //                           color: Colors.black, fontWeight: FontWeight.bold),
        //                     ),
        //                     Text(
        //                       "\$299.43",
        //                       style: TextStyle(
        //                         color: MyColor.blue,
        //                       ),
        //                     ),
        //                     Row(
        //                       children: [
        //                         Icon(Icons.star),
        //                         Icon(Icons.star),
        //                         Icon(Icons.star),
        //                         Icon(Icons.star),
        //                         Icon(Icons.star),
        //                       ],
        //                     ),
        //                     Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //                       children: [
        //                         Text(
        //                           "\$ 534.33",
        //                           style: TextStyle(
        //                               color: MyColor.gray,
        //                               decoration: TextDecoration.lineThrough),
        //                         ),
        //                         Text(
        //                           "24% off",
        //                           style: TextStyle(
        //                             color: MyColor.red,
        //                           ),
        //                         ),
        //                       ],
        //                     ),
        //                   ],
        //                 ),
        //               );
        //             });
        //       }
        //       if (snapshot.connectionState == ConnectionState.waiting) {
        //         return Center(child: CircularProgressIndicator());
        //       }
        //       if (snapshot.connectionState == ConnectionState.none){
        //         return Text("embty data");
        //       }
        //       return Center(child: Text("No data"));
        // }),

    );
  }
}
