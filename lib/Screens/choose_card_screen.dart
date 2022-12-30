import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class ChooseCard extends StatelessWidget {
  const ChooseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Choose Card ", buttonAction: (){},blank: Icon(Icons.add)),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //card shape and indicator
            SizedBox(
              height: 100,
            ),
            MyButton(title: "Pay\$766.68", buttonAction: (){}, textColor: Colors.white, buttonColor: Colors.blue)
          ],
        ),
      ),
    );
  }
}