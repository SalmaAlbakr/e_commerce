import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(title: "Add Card ", buttonAction: () {}),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Card Number",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),

              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Card Number",
                  border: OutlineInputBorder(),
                ),
              ),

              Container(
                height: 30,
                width: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Expiration Date",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Security Code",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),

              Text(
                "Card Holder",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "Expiration Date"),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 200,
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "Security Code"),
                      ),
                    ),
                  ],
                ),
              ),

              TextFormField(
                decoration: InputDecoration(hintText: "Enter Card Number"),
              ),

              SizedBox(
                height: 10,
              ),

              MyButton(
                  title: "Save",
                  buttonAction: () {},
                  textColor: Colors.white,
                  buttonColor: Colors.blue)
            ],
          ),
        ),
      ),
    );
  }
}
