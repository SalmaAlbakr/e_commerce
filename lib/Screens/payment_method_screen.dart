import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Payment ", buttonAction: (){}),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.credit_card_rounded,color: Colors.blueAccent,),
                      SizedBox(width: 5),
                      Text("Credit Card Or Debit",style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.credit_card_rounded,color: Colors.blueAccent,),
                      SizedBox(width: 5),
                      Text("Paypal",style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.credit_card_rounded,color: Colors.blueAccent,),
                      SizedBox(width: 5),
                      Text("Bank Transfer",style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(
                    height: 400,
                  ),
                ],
              ),
              MyButton(title: "Save", buttonAction: (){}, textColor: Colors.white, buttonColor: Colors.blue)
            ],
          ),
        ),
      ),
    );
  }
}