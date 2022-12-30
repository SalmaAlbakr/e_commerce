import 'package:e_commerce/Screens/product_screen.dart';
import 'package:e_commerce/cubed/category_cubit/category_cubit.dart';
import 'package:e_commerce/cubed/product_cubit/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce/Screens/Category_product-screen.dart';
import 'package:e_commerce/Screens/login_screen.dart';
import 'package:e_commerce/themes/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();
  bool isConnection = false;
  @override
  initState() {
    super.initState();
    context.read<CategoryCubit>().getAllCategories();
    context.read<ProductCubit>().getAllHomeProducts();

    final subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      // Got a new connectivity status!
      if (result == ConnectivityResult.none) {
        setState(() {
          isConnection = false;
        });
      } else {
        setState(() {
          isConnection = true;
        });
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    // if (isConnection == false) {
    //   return Center(
    //     child: Text("No internet"),
    //   );
    // }
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  // search and favorite and notification
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // search
                      Container(
                        width: 250,
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                            ),
                            hintText: "Search",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),

                      // favorite
                      Icon(
                        Icons.favorite_border,
                        color: MyColor.gray,
                        size: 30,
                      ),

                      // notification
                      Icon(
                        Icons.notifications_none_outlined,
                        color: MyColor.gray,
                        size: 30,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(
                            () async {
                              // SharedPreferences pref =
                              //     await SharedPreferences.getInstance();
                              // pref.clear();
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return LoginScreen();
                                  },
                                ),
                              );
                            },
                          );
                        },
                        icon: Icon(
                          Icons.output_rounded,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // slider
                  Container(
                    height: 200,
                    child: PageView(
                      controller: _controller,
                      children: [
                        Image.asset("assets/images/image Product (3).png"),
                        Image.asset("assets/images/image Product (1).png"),
                        Image.asset("assets/images/image Product (7).png"),
                        Image.asset("assets/images/image Product (6).png"),
                        Image.asset("assets/images/Offer Banner.png")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 5,
                    effect: WormEffect(
                        type: WormType.thin, dotHeight: 15, dotWidth: 15),
                  ),

                  // more category text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "More category",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ],
                  ),

                  // category list
                  BlocBuilder<CategoryCubit , CategoryState>
                    (builder: (context, state){
                    if (state is CategorySuccess){
                      return Container(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
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
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                      NetworkImage(state.list[item].image),
                                      radius: 30,
                                    ),
                                    SizedBox(
                                      height: 5,
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
                        ),
                      );
                    }
                    return CircularProgressIndicator();
                  }),

                  // FutureBuilder<List<CategoryModel>>(
                  //   future: CatRepo().getAllCat(),
                  //   builder: (BuildContext context,
                  //       AsyncSnapshot<List<CategoryModel>> snapshot) {
                  //  if (snapshot.connectionState ==
                  //         ConnectionState.waiting) {
                  //       return CircularProgressIndicator();
                  //     } else if (snapshot.connectionState ==
                  //         ConnectionState.done) {
                  //    final ListCat = snapshot.data;
                  //
                  //    return Container(
                  //         height: 100,
                  //         child: ListView.builder(
                  //           scrollDirection: Axis.horizontal,
                  //           itemCount: ListCat!.length,
                  //           itemBuilder: (BuildContext context, int item) {
                  //             return Padding(
                  //               padding: const EdgeInsets.all(8.0),
                  //               child: GestureDetector(
                  //                 onTap: () {
                  //                   Navigator.of(context).push(
                  //                     MaterialPageRoute(
                  //                       builder: (context) =>
                  //                           CategoryProductScreen(
                  //                         categoryName: ListCat[item].name,
                  //                       ),
                  //                     ),
                  //                   );
                  //                 },
                  //                 child: Column(
                  //                   children: [
                  //                     CircleAvatar(
                  //                       backgroundImage:
                  //                           NetworkImage(ListCat[item].image),
                  //                       radius: 30,
                  //                     ),
                  //                     SizedBox(
                  //                       height: 5,
                  //                     ),
                  //                     Text(
                  //                       "${ListCat[item].name}",
                  //                       style: TextStyle(
                  //                         fontWeight: FontWeight.bold,
                  //                       ),
                  //                     )
                  //                   ],
                  //                 ),
                  //               ),
                  //             );
                  //           },
                  //         ),
                  //       );
                  //     } else if (snapshot.connectionState ==
                  //         ConnectionState.none) {
                  //       return Text("data");
                  //     } else {
                  //       return CircularProgressIndicator();
                  //     }
                  //   },
                  // ),

                  // flash sale text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Flash Sale",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See More",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ],
                  ),

                  // product image
                  Container(
                    height: 200,
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int i) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: MyColor.gray)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                        "assets/images/image Product.png"),
                                    Text(
                                      "FS-Nike Air",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "\$299.43",
                                      style: TextStyle(
                                        color: MyColor.blue,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$ 534.33",
                                          style: TextStyle(
                                              color: MyColor.gray,
                                              decoration:
                                                  TextDecoration.lineThrough),
                                        ),
                                        SizedBox(
                                          width: 10,
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
                              ),
                            ),
                          );
                        }),
                  ),

                  // mega sale text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Mega Sale",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See More",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ))
                    ],
                  ),

                  // product image
                  Container(
                    height: 200,
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int i) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: MyColor.gray)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                        "assets/images/image Product.png"),
                                    Text(
                                      "FS-Nike Air",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "\$299.43",
                                      style: TextStyle(
                                        color: MyColor.blue,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$ 534.33",
                                          style: TextStyle(
                                              color: MyColor.gray,
                                              decoration:
                                                  TextDecoration.lineThrough),
                                        ),
                                        SizedBox(
                                          width: 10,
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
                              ),
                            ),
                          );
                        }),
                  ),

                  // stack image
                  Stack(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset("assets/images/image 51.png")),
                      Container(
                        margin: EdgeInsets.all(30),
                        child: Text(
                          "Recomended\n Product",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(100),
                        child: Text(
                          "We recommend the best for you",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // grid product image
                  BlocBuilder<ProductCubit ,ProductState >
                    (builder: (context , state){
                    if (state is ProductSuccesses){
                    return GridView.builder(
                      itemCount: state.productList.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductScreen(idNum: state.productList[index].id,),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                border: Border.all(color: MyColor.gray)),
                            child: Column(
                              children: [
                                // product image
                                Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.network(
                                      state.productList[index].thumbnail

                                    // "assets/images/image Product (6).png",
                                  ),
                                ),

                                Text(state.productList[index].title
                                  // "name"
                                  // ProductList![index].title
                                ),
                                // Container(
                                //   child: RatingBar.builder(
                                //       itemSize: 20,
                                //       itemBuilder: (context, _) => Icon(
                                //             Icons.star,
                                //             size: 1,
                                //             color: Colors.amber,
                                //           ),
                                //       onRatingUpdate: (rating) {}),
                                // ),

                                Text(state.productList[index].price.toString()
                                  //"price"
                                ),
                                Text(
                                    "Rating: ${state.productList[index].rating.toString()} "),

                                Text(
                                    "discount: ${state.productList[index].discountPercentage.toString()} % "
                                  //"offer"
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );}
                    else return CircularProgressIndicator();
                  }
                  ),
                  // FutureBuilder<List<ProductModel>>(
                  //   future: ProductRepository().getAllProduct(),
                  //   builder: (BuildContext context,
                  //       AsyncSnapshot<List<ProductModel>> snapshot) {
                  //     final ProductList = snapshot.data;
                  //
                  //     if (snapshot.connectionState == ConnectionState.waiting) {
                  //       return CircularProgressIndicator();
                  //     }
                  //     if (snapshot.connectionState == ConnectionState.done) {
                  //       return GridView.builder(
                  //         itemCount: ProductList!.length,
                  //         shrinkWrap: true,
                  //         physics: NeverScrollableScrollPhysics(),
                  //         gridDelegate:
                  //             SliverGridDelegateWithFixedCrossAxisCount(
                  //                 crossAxisCount: 2),
                  //         itemBuilder: (BuildContext context, int index) {
                  //           return GestureDetector(
                  //             onTap: () {
                  //               Navigator.of(context).push(
                  //                 MaterialPageRoute(
                  //                   builder: (context) =>
                  //                       ProductScreen(idNum: ProductList[index].id,),
                  //                 ),
                  //               );
                  //             },
                  //             child: Container(
                  //               margin: EdgeInsets.all(1),
                  //               decoration: BoxDecoration(
                  //                   border: Border.all(color: MyColor.gray)),
                  //               child: Column(
                  //                 children: [
                  //                   // product image
                  //                   Container(
                  //                     width: 100,
                  //                     height: 100,
                  //                     child: Image.network(
                  //                         ProductList[index].thumbnail
                  //
                  //                         // "assets/images/image Product (6).png",
                  //                         ),
                  //                   ),
                  //
                  //                   Text(ProductList[index].title
                  //                       // "name"
                  //                       // ProductList![index].title
                  //                       ),
                  //                   // Container(
                  //                   //   child: RatingBar.builder(
                  //                   //       itemSize: 20,
                  //                   //       itemBuilder: (context, _) => Icon(
                  //                   //             Icons.star,
                  //                   //             size: 1,
                  //                   //             color: Colors.amber,
                  //                   //           ),
                  //                   //       onRatingUpdate: (rating) {}),
                  //                   // ),
                  //
                  //                   Text(ProductList[index].price.toString()
                  //                       //"price"
                  //                       ),
                  //                   Text(
                  //                       "Rating: ${ProductList[index].rating.toString()} "),
                  //
                  //                   Text(
                  //                       "discount: ${ProductList[index].discountPercentage.toString()} % "
                  //                       //"offer"
                  //                       ),
                  //                 ],
                  //               ),
                  //             ),
                  //           );
                  //         },
                  //       );
                  //     }
                  //     return CircularProgressIndicator();
                  //   },
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
