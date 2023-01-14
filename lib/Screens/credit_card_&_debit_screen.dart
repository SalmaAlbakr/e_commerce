import 'package:e_commerce/Screens/add_card_screen.dart';
import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class CreditCardAndDebitScreen extends StatelessWidget {
  const CreditCardAndDebitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Credit Card And Debit",buttonAction:  (){}),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 600,
              child: ListView.builder(
                itemCount: 10,
                  itemBuilder: (context , int item){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    height: 150,
                    width: 50,
                  ),
                );
              }),
            ),
            Container(
              width: 500,
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:  MaterialStatePropertyAll(MyColor.blue),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddCardScreen(),
                    ),
                  );
                },
                child: Text(
                  "Add Card",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
