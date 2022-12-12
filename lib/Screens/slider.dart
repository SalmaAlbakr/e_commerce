import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // title bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.arrow_back_ios),
                  Text(
                    "Nike Air Max 270",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Icon(Icons.search),
                  Icon(Icons.more_vert),
                ],
              ),
              // slider (product image)
              CarouselSlider(
                items: [
                Image.asset("assets/images/image Product (3).png"),
                Image.asset("assets/images/image Product (1).png"),
                Image.asset("assets/images/image Product (7).png"),
                Image.asset("assets/images/image Product (6).png"),
                  Image.asset("assets/images/Offer Banner.png")
              ], options: CarouselOptions(
                height: 150,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                enlargeCenterPage: true,
                pageSnapping: true,
                pauseAutoPlayOnManualNavigate: true,
                scrollDirection: Axis.horizontal,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
