import 'package:flutter/material.dart';
import 'package:e_commerce/Screens/Account_screen.dart';
import 'package:e_commerce/Screens/Home_screen.dart';
import 'package:e_commerce/Screens/cart_screen.dart';
import 'package:e_commerce/Screens/offer_screen.dart';
import 'package:e_commerce/Screens/search_screen2.dart';

class NavigationScreen extends StatefulWidget {
  NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  List screen = [HomeScreen(),Search(), CartScreen(),Offer(),AccountScreen()];
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: num,
        onTap:  (index){
          setState(() {
            num = index;
          });
        } ,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_rounded), label: "offer"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
        ],
      ),
       body: screen[num],
    );
  }
}

// body: SafeArea(
//   child: Container(
//     width: 900,
//     margin: EdgeInsets.all(5),
//     child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: product.length,
//         itemBuilder: (BuildContext context, int i) {
//           return Container(
//             child: Column(
//               children: [
//                 Image.asset(product[i]["image"]),
//                 Text(product[i]["name"]),
//                 Text(product[i]["price"].toString()),
//               ],
//             ),
//           );
//         }),
//   ),
// ),