import 'package:e_commerce/Screens/Category_product-screen.dart';
import 'package:e_commerce/Screens/activity_notification_screen.dart';
import 'package:e_commerce/Screens/add_address_screen.dart';
import 'package:e_commerce/Screens/add_card_screen.dart';
import 'package:e_commerce/Screens/add_card_screen2.dart';
import 'package:e_commerce/Screens/add_payment_screen.dart';
import 'package:e_commerce/Screens/address_screen.dart';
import 'package:e_commerce/Screens/birthday_screen.dart';
import 'package:e_commerce/Screens/cart_screen.dart';
import 'package:e_commerce/Screens/change_name_screen.dart';
import 'package:e_commerce/Screens/change_password_screen.dart';
import 'package:e_commerce/Screens/credit_card_&_debit_screen.dart';
import 'package:e_commerce/Screens/delete_address_confirmation_screen.dart';
import 'package:e_commerce/Screens/email_screen.dart';
import 'package:e_commerce/Screens/feed_notification_screen.dart';
import 'package:e_commerce/Screens/list_category_screen.dart';
import 'package:e_commerce/Screens/login_screen.dart';
import 'package:e_commerce/Screens/notification_screen.dart';
import 'package:e_commerce/Screens/offer_notification_screen.dart';
import 'package:e_commerce/Screens/order_details_screen.dart';
import 'package:e_commerce/Screens/payment_method_screen.dart';
import 'package:e_commerce/Screens/review_screen.dart';
import 'package:e_commerce/Screens/reviwe_product_screen.dart';
import 'package:e_commerce/Screens/search_result_screen.dart';
import 'package:e_commerce/Screens/short_by_screen.dart';
import 'package:e_commerce/Screens/success_sceen.dart';
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
import 'package:e_commerce/Screens/sin_up_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => CategoryCubit()),
      BlocProvider(create: (context) => OneProductCubit()),
      BlocProvider(create: (context) => CategoryProductCubit()),
      BlocProvider(create: (context) => CartCubit()),
      BlocProvider(create: (context) => ProductCubit()),
    ],
    child: MaterialApp(home: AccountScreen()),
  ));
}