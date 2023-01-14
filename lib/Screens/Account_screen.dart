import 'package:e_commerce/Screens/add_payment_screen.dart';
import 'package:e_commerce/Screens/address_screen.dart';
import 'package:e_commerce/Screens/order_screen.dart';
import 'package:e_commerce/Screens/profile_screen.dart';
import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(title: "Account", buttonAction: () {}),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => profile(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.person_outline_outlined,
                      color: MyColor.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // order navigation
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Order(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: MyColor.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Order",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // address navigation
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddressScreen(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.fmd_good_outlined,
                      color: MyColor.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Address",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // payment navigation
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddPayment(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.payment_sharp,
                      color: MyColor.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Payment",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
