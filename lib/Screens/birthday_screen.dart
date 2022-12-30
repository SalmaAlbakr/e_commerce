import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';

class BirthdayScreen extends StatelessWidget {
   BirthdayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar:  buildAppBar(title: "Birthday" ,buttonAction:  (){}),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Your Birthday" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(8),
              decoration :BoxDecoration(
                border: Border.all(color: MyColor.gray),),
              child: DateTimeFormField(
                decoration: InputDecoration(
                  hintText: "12/12/2012",
                  suffixIcon:  Icon(Icons.calendar_today_outlined),
                    border: InputBorder.none
                ),
                mode: DateTimeFieldPickerMode.date,
              ),
            ),
            SizedBox(height: 500,),
            MyButton(title: "Save", buttonAction: (){}, textColor: Colors.white, buttonColor: MyColor.blue)
          ],
        ),
      ),
    );
  }
}
