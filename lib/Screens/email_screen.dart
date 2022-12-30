import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class EmailScreen extends StatelessWidget {
  EmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  buildAppBar(title: "Email",buttonAction:  (){}),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(

          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Change Email" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(8),
              decoration :BoxDecoration(
                border: Border.all(color: MyColor.gray),),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Derlaxy@yahoo.com",
                    prefixIcon:  Icon(Icons.email_outlined),
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text("We Will Send Verification to your New Email" , style: TextStyle(color: MyColor.blue , fontSize: 10),),
            SizedBox(height: 450,),
            Container(
              width: 500,
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:  MaterialStatePropertyAll(MyColor.blue),
                ),
                onPressed: () {},
                child: Text(
                  "Change Email",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
