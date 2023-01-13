import 'package:e_commerce/Screens/order_details_screen.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          title: "Order ",
          buttonAction: () {},blank: Icon(Icons.add)
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 2,
            itemBuilder: (BuildContext context, int i){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetailsScreen()));
              },
              child: Card(
                borderOnForeground: true,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "LQNSU346JK",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Order at Lafyuu : Aug 1.2017",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Order Status",style: TextStyle(color: Colors.grey)),
                          SizedBox(width: 170),
                          Text("Shipping"),
                          SizedBox(width: 15),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Items",style: TextStyle(color: Colors.grey)),
                          SizedBox(width: 160),
                          Text("2 item Purchased"),
                          SizedBox(width: 15),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Price",style: TextStyle(color: Colors.grey)),
                          SizedBox(width: 220),
                          Text("\$299.43",style: TextStyle(color: Colors.blueAccent)),
                          SizedBox(width: 15),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        })
      ),
    );
  }
}