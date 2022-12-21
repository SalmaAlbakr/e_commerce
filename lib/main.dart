import 'package:e_commerce/Screens/Category_product-screen.dart';
import 'package:e_commerce/cubed/cartCubed/cart_cubit.dart';
import 'package:e_commerce/cubed/categoryProductCubit/category_product_cubit.dart';
import 'package:e_commerce/cubed/category_cubit/category_cubit.dart';
import 'package:e_commerce/cubed/oneProductCubit/one_product_cubit.dart';
import 'package:e_commerce/cubed/product_cubit/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce/Screens/Account_screen.dart';
import 'package:e_commerce/Screens/Home_screen.dart';
import 'package:e_commerce/Screens/Splash_screen.dart';
import 'package:e_commerce/Screens/navigation_bar.dart';
import 'package:e_commerce/Screens/offer_screen.dart';
import 'package:e_commerce/Screens/product_screen.dart';
import 'package:e_commerce/Screens/profile_screen.dart';
import 'package:e_commerce/Screens/search_screen.dart';
import 'package:e_commerce/Screens/search_screen2.dart';
import 'package:e_commerce/Screens/slider.dart';
import 'package:e_commerce/Screens/sin_up_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screens/cart_screen.dart';
import 'Screens/login_screen.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => CategoryCubit()),
      BlocProvider(create: (context) => OneProductCubit()),
      BlocProvider(create: (context) => CategoryProductCubit()),
      BlocProvider(create: (context) => CartCubit()),
      BlocProvider(create: (context) => ProductCubit()),
    ],
    child: MaterialApp(home: HomeScreen()),
  ));
}