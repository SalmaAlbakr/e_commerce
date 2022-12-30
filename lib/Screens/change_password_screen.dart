import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Change Password" ,buttonAction:  (){}),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView(
              shrinkWrap: true,
              children: [
                Text("Old Password" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                SizedBox(height: 10,),
                Container(
                  decoration :BoxDecoration(
                      border: Border.all(color: MyColor.gray),),
                  child: TextFormField(decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    border: InputBorder.none
                  ),),
                ),
                SizedBox(height: 10,),
                Text("New Password" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                SizedBox(height: 10,),
                Container(
                  decoration :BoxDecoration(
                      border: Border.all(color: MyColor.gray),),
                  child: TextFormField(decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    border: InputBorder.none
                  ),),
                ),
                SizedBox(height: 10,),
                Text("New Password Again" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                SizedBox(height: 10,),
                Container(
                  decoration :BoxDecoration(
                      border: Border.all(color: MyColor.gray),),
                  child: TextFormField(decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    border: InputBorder.none
                  ),),
                ),
                //SizedBox(height: 350,),
              ],
            ),
            MyButton(title: "Save", buttonAction: (){}, textColor: Colors.white, buttonColor: MyColor.blue)
          ],
        ),
      ),
    );
  }
}
