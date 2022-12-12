import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/Screens/slider.dart';
import 'package:e_commerce/cubed/oneProductCubit/one_product_cubit.dart';
import 'package:e_commerce/model/onePoduct_model.dart';
import 'package:e_commerce/repositry/oneProductRepositry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:e_commerce/thems/colors.dart';

class ProductScreen extends StatefulWidget {
  int idNum;
  ProductScreen({Key? key, required this.idNum}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  @override
  void initState() {
    super.initState();
    context.read<OneProductCubit>().getOneProduct(widget.idNum);
  }
  List size = [20, 25, 30, 32, 35, 39, 40, 42, 47, 50, 52, 54, 60];

  List avatarColor = [
    Colors.blueGrey,
    Colors.blue,
    Colors.black,
    Colors.yellow,
    Colors.red,
    Colors.pinkAccent,
    Colors.purple,
    Colors.deepPurple,
    Colors.orange
  ];

  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
          BlocBuilder<OneProductCubit , OneProductState>
            (builder: (context , state){
            if (state is OneProductSuccesses){
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _searchBar(),
                      Image.network(state.oneProductModel.thumbnail),

                      // slide (product image)
                      // CarouselSlider(
                      //   options: CarouselOptions(
                      //     height: 100,
                      //     autoPlay: true,
                      //     autoPlayInterval: Duration(seconds: 2),
                      //   ),
                      //   items: [
                      //     // Image.asset("assets/images/image Product (3).png"),
                      //     // Image.asset("assets/images/image Product (1).png"),
                      //     // Image.asset("assets/images/image Product (7).png"),
                      //     // Image.asset("assets/images/image Product (6).png")
                      //
                      //   ],
                      // ),
                      SizedBox(
                        height: 20,
                      ),

                      // product name
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            // "Nike Air Zoom Pegasus 36\n Miami"
                            state.oneProductModel.title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 50),
                          Icon(
                            Icons.favorite_border,
                            color: MyColor.gray,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        state.oneProductModel.rating.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),

                      // rating bar
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
                      SizedBox(height: 20),
                      Text(
                        "\$ ${state.oneProductModel.price}",
                        style: TextStyle(color: Colors.blue),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Select Size",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 25),

                      // size list view
                      Container(
                        height: 30,
                        //width: 200 ,
                        child: ListView.builder(
                          itemCount: size.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int i) {
                            return CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: Text(size[i].toString()),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 25),
                      Text(
                        "Select color",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 25),

                      // color list view
                      Container(
                        height: 30,
                        //width: 200 ,
                        child: ListView.builder(
                          itemCount: avatarColor.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int m) {
                            return CircleAvatar(
                              //radius: 30,
                              backgroundColor: avatarColor[m],
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 35),
                      Text(
                        "Specification",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("shown:"),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "assets/images/image.jpg",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("style:"),
                      SizedBox(
                        height: 20,
                      ),
                      Text(state.oneProductModel.description,
                          //"The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.grey)),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Review product",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 40),
                              Text(
                                "see more",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RatingBar.builder(
                              itemSize: 25,
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                size: 1,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {}),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            child: Image.asset("assets/images/تنزيل.jpeg"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text("James Lawson"),
                              RatingBar.builder(
                                  itemSize: 20,
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    size: 1,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {}),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          "air max are always very comfortable fit, clean and just perfect in every way. just the box was "
                              "too small and scrunched the sneakers up a little"
                              " bit, not sure if the box was always this small but the 90s are and w"
                              "ill always be one of my"
                              " favorites.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.grey)),
                      SizedBox(height: 35),
                      Text("You Might Also Like ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 35),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                //margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: MyColor.gray)),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                //margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: MyColor.gray)),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                //margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: MyColor.gray)),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                //margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: MyColor.gray)),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                //margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: MyColor.gray)),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                //margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: MyColor.gray)),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                //margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(color: MyColor.gray)),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
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
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 300,
                            child: ElevatedButton(
                                style: ButtonStyle(),
                                onPressed: () {},
                                child: Text(
                                  "Add To Cart ",
                                  style: TextStyle(fontSize: 20),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }
            return CircularProgressIndicator();
          }
          )
        // FutureBuilder<singleProduct>(
        //     future: OneProduct().getProduct(idNum.toString()),
        //     builder: (context, snapshot) {
        //       final myData = snapshot.data;
        //       if (snapshot.connectionState == ConnectionState.done) {
        //         return SingleChildScrollView(
        //           child: Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.start,
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 _searchBar(),
        //                 Image.network(myData!.thumbnail),
        //
        //                 // slide (product image)
        //                 CarouselSlider(
        //                   options: CarouselOptions(
        //                     height: 100,
        //                     autoPlay: true,
        //                     autoPlayInterval: Duration(seconds: 2),
        //                   ),
        //                   items: [
        //                     // Image.asset("assets/images/image Product (3).png"),
        //                     // Image.asset("assets/images/image Product (1).png"),
        //                     // Image.asset("assets/images/image Product (7).png"),
        //                     // Image.asset("assets/images/image Product (6).png")
        //
        //                   ],
        //                 ),
        //                 SizedBox(
        //                   height: 20,
        //                 ),
        //
        //                 // product name
        //                 Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //                   children: [
        //                     Text(
        //                       // "Nike Air Zoom Pegasus 36\n Miami"
        //                       myData.title,
        //                       style: TextStyle(fontWeight: FontWeight.bold),
        //                     ),
        //                     SizedBox(width: 50),
        //                     Icon(
        //                       Icons.favorite_border,
        //                       color: MyColor.gray,
        //                     ),
        //                   ],
        //                 ),
        //                 SizedBox(
        //                   height: 20,
        //                 ),
        //                 Text(
        //                   myData.rating.toString(),
        //                   style: TextStyle(fontWeight: FontWeight.bold),
        //                 ),
        //
        //                 // rating bar
        //                 // Container(
        //                 //   child: RatingBar.builder(
        //                 //       itemSize: 20,
        //                 //       itemBuilder: (context, _) => Icon(
        //                 //             Icons.star,
        //                 //             size: 1,
        //                 //             color: Colors.amber,
        //                 //           ),
        //                 //       onRatingUpdate: (rating) {}),
        //                 // ),
        //                 SizedBox(height: 20),
        //                 Text(
        //                   "\$ ${myData.price}",
        //                   style: TextStyle(color: Colors.blue),
        //                 ),
        //                 SizedBox(
        //                   height: 20,
        //                 ),
        //                 Text(
        //                   "Select Size",
        //                   style: TextStyle(fontWeight: FontWeight.bold),
        //                 ),
        //                 SizedBox(height: 25),
        //
        //                 // size list view
        //                 Container(
        //                   height: 30,
        //                   //width: 200 ,
        //                   child: ListView.builder(
        //                     itemCount: size.length,
        //                     scrollDirection: Axis.horizontal,
        //                     itemBuilder: (BuildContext context, int i) {
        //                       return CircleAvatar(
        //                         backgroundColor: Colors.grey,
        //                         child: Text(size[i].toString()),
        //                       );
        //                     },
        //                   ),
        //                 ),
        //                 SizedBox(height: 25),
        //                 Text(
        //                   "Select color",
        //                   style: TextStyle(fontWeight: FontWeight.bold),
        //                 ),
        //                 SizedBox(height: 25),
        //
        //                 // color list view
        //                 Container(
        //                   height: 30,
        //                   //width: 200 ,
        //                   child: ListView.builder(
        //                     itemCount: avatarColor.length,
        //                     scrollDirection: Axis.horizontal,
        //                     itemBuilder: (BuildContext context, int m) {
        //                       return CircleAvatar(
        //                         //radius: 30,
        //                         backgroundColor: avatarColor[m],
        //                       );
        //                     },
        //                   ),
        //                 ),
        //                 SizedBox(height: 35),
        //                 Text(
        //                   "Specification",
        //                   style: TextStyle(fontWeight: FontWeight.bold),
        //                 ),
        //                 SizedBox(
        //                   height: 20,
        //                 ),
        //                 Text("shown:"),
        //                 SizedBox(
        //                   height: 20,
        //                 ),
        //                 Row(
        //                   mainAxisAlignment: MainAxisAlignment.end,
        //                   children: [
        //                     Text(
        //                       "assets/images/image.jpg",
        //                       style: TextStyle(
        //                           fontWeight: FontWeight.w300,
        //                           color: Colors.grey),
        //                     ),
        //                   ],
        //                 ),
        //                 SizedBox(
        //                   height: 20,
        //                 ),
        //                 Text("style:"),
        //                 SizedBox(
        //                   height: 20,
        //                 ),
        //                 Text(myData.description,
        //                     //"The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
        //                     style: TextStyle(
        //                         fontWeight: FontWeight.w300,
        //                         color: Colors.grey)),
        //                 SizedBox(
        //                   height: 20,
        //                 ),
        //                 Column(
        //                   mainAxisAlignment: MainAxisAlignment.start,
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Text(
        //                           "Review product",
        //                           style: TextStyle(fontWeight: FontWeight.bold),
        //                         ),
        //                         SizedBox(width: 40),
        //                         Text(
        //                           "see more",
        //                           style: TextStyle(color: Colors.blue),
        //                         ),
        //                       ],
        //                     ),
        //                     SizedBox(
        //                       height: 10,
        //                     ),
        //                     RatingBar.builder(
        //                         itemSize: 25,
        //                         itemBuilder: (context, _) => Icon(
        //                               Icons.star,
        //                               size: 1,
        //                               color: Colors.amber,
        //                             ),
        //                         onRatingUpdate: (rating) {}),
        //                   ],
        //                 ),
        //                 SizedBox(
        //                   height: 20,
        //                 ),
        //                 Row(
        //                   children: [
        //                     Container(
        //                       height: 55,
        //                       width: 55,
        //                       child: Image.asset("assets/images/تنزيل.jpeg"),
        //                     ),
        //                     SizedBox(
        //                       width: 20,
        //                     ),
        //                     Column(
        //                       children: [
        //                         Text("James Lawson"),
        //                         RatingBar.builder(
        //                             itemSize: 20,
        //                             itemBuilder: (context, _) => Icon(
        //                                   Icons.star,
        //                                   size: 1,
        //                                   color: Colors.amber,
        //                                 ),
        //                             onRatingUpdate: (rating) {}),
        //                       ],
        //                     ),
        //                   ],
        //                 ),
        //                 SizedBox(
        //                   height: 20,
        //                 ),
        //                 Text(
        //                     "air max are always very comfortable fit, clean and just perfect in every way. just the box was "
        //                     "too small and scrunched the sneakers up a little"
        //                     " bit, not sure if the box was always this small but the 90s are and w"
        //                     "ill always be one of my"
        //                     " favorites.",
        //                     style: TextStyle(
        //                         fontWeight: FontWeight.w300,
        //                         color: Colors.grey)),
        //                 SizedBox(height: 35),
        //                 Text("You Might Also Like ",
        //                     style: TextStyle(fontWeight: FontWeight.bold)),
        //                 SizedBox(height: 35),
        //                 Container(
        //                   height: 200,
        //                   child: ListView(
        //                     scrollDirection: Axis.horizontal,
        //                     children: [
        //                       Padding(
        //                         padding: const EdgeInsets.all(8.0),
        //                         child: Container(
        //                           //margin: EdgeInsets.all(5),
        //                           decoration: BoxDecoration(
        //                               border: Border.all(color: MyColor.gray)),
        //                           child: Column(
        //                             mainAxisAlignment:
        //                                 MainAxisAlignment.spaceBetween,
        //                             children: [
        //                               Image.asset(
        //                                   "assets/images/image Product.png"),
        //                               Text(
        //                                 "FS-Nike Air",
        //                                 style: TextStyle(
        //                                     color: Colors.black,
        //                                     fontWeight: FontWeight.bold),
        //                               ),
        //                               Text(
        //                                 "\$299.43",
        //                                 style: TextStyle(
        //                                   color: MyColor.blue,
        //                                 ),
        //                               ),
        //                               Row(
        //                                 mainAxisAlignment:
        //                                     MainAxisAlignment.spaceBetween,
        //                                 children: [
        //                                   Text(
        //                                     "\$ 534.33",
        //                                     style: TextStyle(
        //                                         color: MyColor.gray,
        //                                         decoration:
        //                                             TextDecoration.lineThrough),
        //                                   ),
        //                                   SizedBox(
        //                                     width: 10,
        //                                   ),
        //                                   Text(
        //                                     "24% off",
        //                                     style: TextStyle(
        //                                       color: MyColor.red,
        //                                     ),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                       Padding(
        //                         padding: const EdgeInsets.all(8.0),
        //                         child: Container(
        //                           //margin: EdgeInsets.all(5),
        //                           decoration: BoxDecoration(
        //                               border: Border.all(color: MyColor.gray)),
        //                           child: Column(
        //                             mainAxisAlignment:
        //                                 MainAxisAlignment.spaceBetween,
        //                             children: [
        //                               Image.asset(
        //                                   "assets/images/image Product.png"),
        //                               Text(
        //                                 "FS-Nike Air",
        //                                 style: TextStyle(
        //                                     color: Colors.black,
        //                                     fontWeight: FontWeight.bold),
        //                               ),
        //                               Text(
        //                                 "\$299.43",
        //                                 style: TextStyle(
        //                                   color: MyColor.blue,
        //                                 ),
        //                               ),
        //                               Row(
        //                                 mainAxisAlignment:
        //                                     MainAxisAlignment.spaceBetween,
        //                                 children: [
        //                                   Text(
        //                                     "\$ 534.33",
        //                                     style: TextStyle(
        //                                         color: MyColor.gray,
        //                                         decoration:
        //                                             TextDecoration.lineThrough),
        //                                   ),
        //                                   SizedBox(
        //                                     width: 10,
        //                                   ),
        //                                   Text(
        //                                     "24% off",
        //                                     style: TextStyle(
        //                                       color: MyColor.red,
        //                                     ),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                       Padding(
        //                         padding: const EdgeInsets.all(8.0),
        //                         child: Container(
        //                           //margin: EdgeInsets.all(5),
        //                           decoration: BoxDecoration(
        //                               border: Border.all(color: MyColor.gray)),
        //                           child: Column(
        //                             mainAxisAlignment:
        //                                 MainAxisAlignment.spaceBetween,
        //                             children: [
        //                               Image.asset(
        //                                   "assets/images/image Product.png"),
        //                               Text(
        //                                 "FS-Nike Air",
        //                                 style: TextStyle(
        //                                     color: Colors.black,
        //                                     fontWeight: FontWeight.bold),
        //                               ),
        //                               Text(
        //                                 "\$299.43",
        //                                 style: TextStyle(
        //                                   color: MyColor.blue,
        //                                 ),
        //                               ),
        //                               Row(
        //                                 mainAxisAlignment:
        //                                     MainAxisAlignment.spaceBetween,
        //                                 children: [
        //                                   Text(
        //                                     "\$ 534.33",
        //                                     style: TextStyle(
        //                                         color: MyColor.gray,
        //                                         decoration:
        //                                             TextDecoration.lineThrough),
        //                                   ),
        //                                   SizedBox(
        //                                     width: 10,
        //                                   ),
        //                                   Text(
        //                                     "24% off",
        //                                     style: TextStyle(
        //                                       color: MyColor.red,
        //                                     ),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                       Padding(
        //                         padding: const EdgeInsets.all(8.0),
        //                         child: Container(
        //                           //margin: EdgeInsets.all(5),
        //                           decoration: BoxDecoration(
        //                               border: Border.all(color: MyColor.gray)),
        //                           child: Column(
        //                             mainAxisAlignment:
        //                                 MainAxisAlignment.spaceBetween,
        //                             children: [
        //                               Image.asset(
        //                                   "assets/images/image Product.png"),
        //                               Text(
        //                                 "FS-Nike Air",
        //                                 style: TextStyle(
        //                                     color: Colors.black,
        //                                     fontWeight: FontWeight.bold),
        //                               ),
        //                               Text(
        //                                 "\$299.43",
        //                                 style: TextStyle(
        //                                   color: MyColor.blue,
        //                                 ),
        //                               ),
        //                               Row(
        //                                 mainAxisAlignment:
        //                                     MainAxisAlignment.spaceBetween,
        //                                 children: [
        //                                   Text(
        //                                     "\$ 534.33",
        //                                     style: TextStyle(
        //                                         color: MyColor.gray,
        //                                         decoration:
        //                                             TextDecoration.lineThrough),
        //                                   ),
        //                                   SizedBox(
        //                                     width: 10,
        //                                   ),
        //                                   Text(
        //                                     "24% off",
        //                                     style: TextStyle(
        //                                       color: MyColor.red,
        //                                     ),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                       Padding(
        //                         padding: const EdgeInsets.all(8.0),
        //                         child: Container(
        //                           //margin: EdgeInsets.all(5),
        //                           decoration: BoxDecoration(
        //                               border: Border.all(color: MyColor.gray)),
        //                           child: Column(
        //                             mainAxisAlignment:
        //                                 MainAxisAlignment.spaceBetween,
        //                             children: [
        //                               Image.asset(
        //                                   "assets/images/image Product.png"),
        //                               Text(
        //                                 "FS-Nike Air",
        //                                 style: TextStyle(
        //                                     color: Colors.black,
        //                                     fontWeight: FontWeight.bold),
        //                               ),
        //                               Text(
        //                                 "\$299.43",
        //                                 style: TextStyle(
        //                                   color: MyColor.blue,
        //                                 ),
        //                               ),
        //                               Row(
        //                                 mainAxisAlignment:
        //                                     MainAxisAlignment.spaceBetween,
        //                                 children: [
        //                                   Text(
        //                                     "\$ 534.33",
        //                                     style: TextStyle(
        //                                         color: MyColor.gray,
        //                                         decoration:
        //                                             TextDecoration.lineThrough),
        //                                   ),
        //                                   SizedBox(
        //                                     width: 10,
        //                                   ),
        //                                   Text(
        //                                     "24% off",
        //                                     style: TextStyle(
        //                                       color: MyColor.red,
        //                                     ),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                       Padding(
        //                         padding: const EdgeInsets.all(8.0),
        //                         child: Container(
        //                           //margin: EdgeInsets.all(5),
        //                           decoration: BoxDecoration(
        //                               border: Border.all(color: MyColor.gray)),
        //                           child: Column(
        //                             mainAxisAlignment:
        //                                 MainAxisAlignment.spaceBetween,
        //                             children: [
        //                               Image.asset(
        //                                   "assets/images/image Product.png"),
        //                               Text(
        //                                 "FS-Nike Air",
        //                                 style: TextStyle(
        //                                     color: Colors.black,
        //                                     fontWeight: FontWeight.bold),
        //                               ),
        //                               Text(
        //                                 "\$299.43",
        //                                 style: TextStyle(
        //                                   color: MyColor.blue,
        //                                 ),
        //                               ),
        //                               Row(
        //                                 mainAxisAlignment:
        //                                     MainAxisAlignment.spaceBetween,
        //                                 children: [
        //                                   Text(
        //                                     "\$ 534.33",
        //                                     style: TextStyle(
        //                                         color: MyColor.gray,
        //                                         decoration:
        //                                             TextDecoration.lineThrough),
        //                                   ),
        //                                   SizedBox(
        //                                     width: 10,
        //                                   ),
        //                                   Text(
        //                                     "24% off",
        //                                     style: TextStyle(
        //                                       color: MyColor.red,
        //                                     ),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                       Padding(
        //                         padding: const EdgeInsets.all(8.0),
        //                         child: Container(
        //                           //margin: EdgeInsets.all(5),
        //                           decoration: BoxDecoration(
        //                               border: Border.all(color: MyColor.gray)),
        //                           child: Column(
        //                             mainAxisAlignment:
        //                                 MainAxisAlignment.spaceBetween,
        //                             children: [
        //                               Image.asset(
        //                                   "assets/images/image Product.png"),
        //                               Text(
        //                                 "FS-Nike Air",
        //                                 style: TextStyle(
        //                                     color: Colors.black,
        //                                     fontWeight: FontWeight.bold),
        //                               ),
        //                               Text(
        //                                 "\$299.43",
        //                                 style: TextStyle(
        //                                   color: MyColor.blue,
        //                                 ),
        //                               ),
        //                               Row(
        //                                 mainAxisAlignment:
        //                                     MainAxisAlignment.spaceBetween,
        //                                 children: [
        //                                   Text(
        //                                     "\$ 534.33",
        //                                     style: TextStyle(
        //                                         color: MyColor.gray,
        //                                         decoration:
        //                                             TextDecoration.lineThrough),
        //                                   ),
        //                                   SizedBox(
        //                                     width: 10,
        //                                   ),
        //                                   Text(
        //                                     "24% off",
        //                                     style: TextStyle(
        //                                       color: MyColor.red,
        //                                     ),
        //                                   ),
        //                                 ],
        //                               ),
        //                             ],
        //                           ),
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //                 Row(
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   children: [
        //                     Container(
        //                       width: 300,
        //                       child: ElevatedButton(
        //                           style: ButtonStyle(),
        //                           onPressed: () {},
        //                           child: Text(
        //                             "Add To Cart ",
        //                             style: TextStyle(fontSize: 20),
        //                           )),
        //                     ),
        //                   ],
        //                 ),
        //               ],
        //             ),
        //           ),
        //         );
        //       } else {
        //         return Center(child: CircularProgressIndicator());
        //       }
        //     }),
      ),
    );
  }

  Widget _searchBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_outlined)),
        Text(
          "Nike Air Max 270 Rea....${widget.idNum}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 30),
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
      ],
    );
  }
}
