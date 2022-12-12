import 'package:e_commerce/OneProduct/model.dart';
import 'package:e_commerce/OneProduct/reposity.dart';
import 'package:e_commerce/model/categoryProduct.dart';
import 'package:e_commerce/repositry/categoryProduct_repositry.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/thems/colors.dart';

class CategoryProductScreen extends StatelessWidget {
  String categoryName;
  CategoryProductScreen({Key? key, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "$categoryName category",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_outlined),
          color: Colors.black,
        ),
      ),
      body:
        FutureBuilder<List<CategoryProductTest>>(
          future: ProductRepoTest().getTestProduct(),
            builder: (BuildContext context ,AsyncSnapshot<List<CategoryProductTest>> snapshot){
              if (snapshot.connectionState == ConnectionState.done) {
                final ListCat = snapshot.data;
                return GridView.builder(
                    itemCount: ListCat!.length,
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
                                ListCat[item].image,
                                 // "assets/images/image Product.png"
                              ),
                            ),
                            Text(
                              ListCat[item].name,
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
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.connectionState == ConnectionState.none){
                return Text("embty data");
              }
              return Center(child: Text("No data"));
        }),

    );
  }
}

// void main() {
//   runApp(MaterialApp(home: CategoryProductScreen(),));
// }
