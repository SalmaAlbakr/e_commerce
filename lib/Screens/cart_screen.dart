import 'package:e_commerce/cubed/cartCubed/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/themes/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CartCubit>().getCartProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: Center(
            child: Text("Your Cart",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold))),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            if (state is CartSuccesses) {
              return ListView(
                children: [
                  Container(
                    height: 300,
                    child: ListView.builder(
                        itemCount: state.cartModel.products.length,
                        itemBuilder: (BuildContext context, int item) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 110,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Image.asset(
                                      "assets/images/image Product (6).png"),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            state
                                                .cartModel.products[item].title,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Icon(Icons.favorite_border),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(Icons.delete)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            state.cartModel.products[item].price
                                                .toString(),
                                            style:
                                                TextStyle(color: MyColor.blue),
                                          ),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: MyColor.icon),
                                            ),
                                            height: 30,
                                            width: 50,
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                  Colors.white,
                                                ),
                                              ),
                                              onPressed: () {},
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 30,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  state.cartModel.products[item]
                                                      .price
                                                      .toString(),
                                                ),
                                              ],
                                            ),
                                            decoration: BoxDecoration(
                                                color: MyColor.icon,
                                                border: Border.all(
                                                    color: Colors.grey)),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                              color: MyColor.icon,
                                            )),
                                            height: 30,
                                            width: 50,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.white),
                                                ),
                                                onPressed: () {},
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Colors.black,
                                                )),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),

// fist product

//second product
// Padding(
//   padding: const EdgeInsets.all(8.0),
//   child: Container(
//     height: 110,
//     padding: EdgeInsets.all(10),
//     decoration:
//         BoxDecoration(border: Border.all(color: Colors.grey)),
//     child: Row(
//       children: [
//         Image.asset("assets/images/image Product (7).png"),
//         Column(
//           children: [
//             Row(
//               children: [
//                 Text(
//                   "Nike Air Zoom Pegasus \n 36 Miami",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   width: 40,
//                 ),
//                 Icon(Icons.favorite_border),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Icon(Icons.delete)
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 Text(
//                   "\$299,43",
//                   style: TextStyle(color: MyColor.blue),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       border: Border.all(color: MyColor.icon)),
//                   height: 30,
//                   width: 50,
//                   child: ElevatedButton(
//                       style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(
//                                   Colors.white)),
//                       onPressed: () {},
//                       child: Icon(
//                         Icons.add,
//                         color: Colors.black,
//                       )),
//                 ),
//                 Container(
//                   height: 30,
//                   width: 30,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text("1"),
//                     ],
//                   ),
//                   decoration: BoxDecoration(
//                       color: MyColor.icon,
//                       border: Border.all(color: Colors.grey)),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                       border: Border.all(
//                     color: MyColor.icon,
//                   )),
//                   height: 30,
//                   width: 50,
//                   child: ElevatedButton(
//                       style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.all(
//                                 Colors.white),
//                       ),
//                       onPressed: () {},
//                       child: Icon(
//                         Icons.remove,
//                         color: Colors.black,
//                       )),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ],
//     ),
//   ),
// ),

// coupon code input
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Row(
                      children: [
                        Container(
                            width: 300,
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Coupon Code",
                                ),
                              ),
                            )),
                        ElevatedButton(onPressed: () {}, child: Text("Apply"))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
// cheek
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Items total)"),
                                Text("\$ ${state.cartModel.totalProducts}")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text("Shipping"), Text("\$ 40.00")],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Import charges"),
                                Text("\$ 128.00")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Price",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  state.cartModel.total.toString(),
                                  style: TextStyle(color: MyColor.blue),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // check button
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Check Out"),
                    ),
                  ),
                ],
              );
            }
            return CircularProgressIndicator();
          },
        ),
      )),
    );
  }
}
