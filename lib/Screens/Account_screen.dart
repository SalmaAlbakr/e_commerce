import 'package:e_commerce/Screens/profile_creen.dart';
import 'package:e_commerce/thems/colors.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // title
              Container(
                height: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Account",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              // Divider
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
              ),

              // profile navigation
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const profile(),
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // order navigation
              Row(
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
              SizedBox(
                height: 20,
              ),

              // address navigation
              Row(
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
              SizedBox(
                height: 20,
              ),

              // payment navigation
              Row(
                children: [
                  Icon(
                    Icons.payment_sharp,
                    color: MyColor.blue,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Payment",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
