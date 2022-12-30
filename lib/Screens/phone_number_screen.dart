import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Phone Number ", buttonAction: (){}),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Phone Number",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "(307)55-0133",
                  prefixIcon: Icon(Icons.phone_android_rounded)
              ),
            ),
            SizedBox(
              height: 100,
            ),
            MyButton(title: "Save", buttonAction: (){}, textColor: Colors.white, buttonColor: Colors.blue)
          ],
        ),
      ),
    );
  }
}