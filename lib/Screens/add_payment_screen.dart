import 'package:e_commerce/Screens/credit_card_&_debit_screen.dart';
import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class AddPayment extends StatelessWidget {
  const AddPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(title: "Payment", buttonAction: () {}),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 50,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreditCardAndDebitScreen(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.credit_card,
                      color: MyColor.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Credit Card Or Debit",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.paypal_outlined,
                    color: MyColor.blue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "PayPal",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.food_bank_outlined,
                    color: MyColor.blue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Bank Transfer",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
