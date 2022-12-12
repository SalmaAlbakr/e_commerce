import 'package:flutter/material.dart';
import 'package:e_commerce/thems/colors.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // title
              Container(
                height: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Your Cart" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                  ],
                ),
              ),

              // divider
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
              ),

              // fist product
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 110,
                  padding: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      Image.asset("assets/images/image Product (6).png"),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Nike Air Zoom Pegasus \n 36 Miami",
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                                "\$299,43",
                                style: TextStyle(color: MyColor.blue),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: MyColor.icon)),
                                height: 30,
                                width: 50,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white)),
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    )),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("1"),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: MyColor.icon,
                                    border: Border.all(color: Colors.grey)),
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
              ),

              // second product
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 110,
                  padding: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      Image.asset("assets/images/image Product (7).png"),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Nike Air Zoom Pegasus \n 36 Miami",
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                                "\$299,43",
                                style: TextStyle(color: MyColor.blue),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: MyColor.icon)),
                                height: 30,
                                width: 50,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white)),
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    )),
                              ),
                              Container(
                                height: 30,
                                width: 30,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("1"),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: MyColor.icon,
                                    border: Border.all(color: Colors.grey)),
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
              ),

              // coupon code input
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
                              hintText: "Enter Cupon Code",
                            ),
                          ),
                        )),
                    ElevatedButton(onPressed: () {}, child: Text("Apply"))
                  ],
                ),
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
                          children: [Text("Items (3)"), Text("\$ 598.86")],
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
                          children: [Text("Import charges"), Text("\$ 128.00")],
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
                              "\$ 766.86",
                              style: TextStyle(color: MyColor.blue),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // check butoon
              Container(
                width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(onPressed: () {}, child: Text("Check Out"),)),
            ],
          ),
        ),
      ),
    );
  }
}
