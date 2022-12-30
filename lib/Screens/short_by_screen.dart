import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class ShortByScreen extends StatelessWidget {
  ShortByScreen({Key? key}) : super(key: key);
  List<String> Short = [
    "Best Match",
    "Time: ending soonest",
    "Time: newly listed",
    "price + shipping: lowest first",
    "price + shipping: highest first",
    "Distance: nearest first"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Short by",buttonAction:  (){}),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: Short.length,
              itemBuilder: (context, int item) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    Short[item],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ]);
              })),
    );
  }
}
