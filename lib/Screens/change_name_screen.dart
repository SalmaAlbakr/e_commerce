import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(title: "Name ", buttonAction: () {}),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "First Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextFormField(
                decoration: InputDecoration (hintText: "Maximus"),
              ),
              Text(
                "Last Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Gold"),
              ),
              SizedBox(
                height: 100,
              ),
              MyButton(
                title: "Save",
                buttonAction: () {},
                textColor: Colors.white,
                buttonColor: MyColor.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
