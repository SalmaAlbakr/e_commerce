import 'package:e_commerce/Screens/birthday_screen.dart';
import 'package:e_commerce/Screens/change_name_screen.dart';
import 'package:e_commerce/Screens/change_password_screen.dart';
import 'package:e_commerce/Screens/email_screen.dart';
import 'package:e_commerce/Screens/gender_screen.dart';
import 'package:e_commerce/Screens/phone_number_screen.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/themes/colors.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Profile",buttonAction:  (){}),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // image and name
              Row(
                children: [
                  Image.asset(
                    "assets/images/تنزيل.jpeg",
                    height: 60,
                    width: 60,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ChangeName()));
                        },
                        child: Text(
                          "Maximus Gold",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold,),
                        ),
                      ),
                      Text("@gmail",
                          style: TextStyle(fontSize: 15, color: MyColor.gray)),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              // Gender
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.male,
                      color: MyColor.blue,
                    ),
                  ),
                  Text(
                    "Gender",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Male",
                      style: TextStyle(color: MyColor.gray),
                    ),
                  ),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Genderscreen()));
                  }, icon: Icon(Icons.arrow_forward_ios),)
                ],
              ),
              // Birthday
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.calendar_today_outlined,
                      color: MyColor.blue,
                    ),
                  ),
                  Text(
                    "Birthday",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "30-7-1998",
                      style: TextStyle(color: MyColor.gray),
                    ),
                  ),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BirthdayScreen()));
                  }, icon: Icon(Icons.arrow_forward_ios),)
                ],
              ),
              // Email
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.email_outlined,
                      color: MyColor.blue,
                    ),
                  ),
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "salalbakr@gmail.com",
                      style: TextStyle(color: MyColor.gray),
                    ),
                  ),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EmailScreen()));
                  }, icon: Icon(Icons.arrow_forward_ios),)
                ],
              ),
              //phone Number
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.phone_android_sharp,
                      color: MyColor.blue,
                    ),
                  ),
                  Text(
                    "Phone Number",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "01146060481",
                      style: TextStyle(color: MyColor.gray),
                    ),
                  ),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PhoneNumber()));
                  }, icon: Icon(Icons.arrow_forward_ios),)
                ],
              ),
              // Change Password
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.lock_outline,
                      color: MyColor.blue,
                    ),
                  ),
                  Text(
                    "Change password",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "************",
                      style: TextStyle(color: MyColor.gray),
                    ),
                  ),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePasswordScreen()));
                  }, icon: Icon(Icons.arrow_forward_ios),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
