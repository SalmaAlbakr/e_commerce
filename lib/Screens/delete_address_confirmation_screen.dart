import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class DeleteAddressConfirmationScreen extends StatelessWidget {
  const DeleteAddressConfirmationScreen({Key? key}) : super(key: key);

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
                radius: 40,
                backgroundColor: MyColor.red,
                child: Text("!" , style: TextStyle(color: Colors.white , fontSize: 50),),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Confirmation",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Are you sure wanna delete address",
                style: TextStyle(fontSize: 15 , color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 500,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:  MaterialStatePropertyAll(MyColor.blue),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Delete",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              MyButton(title:  "Cancel", buttonAction: (){}, textColor: Colors.white, buttonColor: MyColor.blue , ),
            ],
          ),
        ),
      ),
    );
  }
  
}
