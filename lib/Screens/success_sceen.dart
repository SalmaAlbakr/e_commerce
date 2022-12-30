import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: MyColor.blue,
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Success",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "thank you for shopping using lafyuu",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              MyButton(title:  "Back To Order", buttonAction: (){}, textColor: Colors.white, buttonColor: MyColor.blue)

            ],
          ),
        ),
      ),
    );
  }
}

