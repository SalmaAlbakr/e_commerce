import 'dart:async';
import 'package:e_commerce/Screens/Category_product-screen.dart';
import 'package:e_commerce/cubed/oneProductCubit/one_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce/Screens/Account_screen.dart';
import 'package:e_commerce/Screens/HomeScreen.dart';
import 'package:e_commerce/Screens/Splash_screen.dart';
import 'package:e_commerce/Screens/merna.dart';
import 'package:e_commerce/Screens/navigation_bar.dart';
import 'package:e_commerce/Screens/offer_screen.dart';
import 'package:e_commerce/Screens/product_screen.dart';
import 'package:e_commerce/Screens/profile_creen.dart';
import 'package:e_commerce/Screens/search_screen.dart';
import 'package:e_commerce/Screens/search_screen2.dart';
import 'package:e_commerce/Screens/slider.dart';
import 'package:e_commerce/Screens/sin_up_screen.dart';
import 'package:e_commerce/cubed/categrogcubed/category_cubit.dart';
import 'package:e_commerce/repositry/categoryRepositry.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screens/cart_screen.dart';
import 'Screens/login_screen.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => CategoryCubit()),
      BlocProvider(create: (context) => OneProductCubit())

    ],
    child: MaterialApp(home: Cart()),
  ));
}

// class RememberMeScreen extends StatefulWidget {
//   const RememberMeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<RememberMeScreen> createState() => _RememberMeScreenState();
// }
//
// class _RememberMeScreenState extends State<RememberMeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<SharedPreferences>(
//       future: SharedPreferences.getInstance(),
//       builder: (context, snapshot) {
//         if (!snapshot.hasData) {
//           // splash
//           return Scaffold(
//             body: Center(
//               child:
//               Container(
//                 color: Colors.blue,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       "assets/images/single icon White.png",
//                       height: 500,
//                       width: 500,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         } else {
//           var isUserLogin = snapshot.data!.getBool("myEmail") ?? false;
//           return Scaffold(
//             body: isUserLogin ? NavigationScreen() : LoginScreen(),
//           );
//         }
//       },
//     );
//   }
// }

// void main() {
//   runApp(const MaterialApp(
//     title: 'Navigation Basics',
//     home: FirstRoute(),
//   ));
// }
