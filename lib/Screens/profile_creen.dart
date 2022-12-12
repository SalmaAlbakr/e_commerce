import 'package:flutter/material.dart';
import 'package:e_commerce/Screens/Account_screen.dart';
import 'package:e_commerce/thems/colors.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // profile
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => const profile()),
                      // );
                    },
                      child: Icon(Icons.arrow_back_ios)),
                  Text(
                    "Profile",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),

              // divider
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
              ),

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
                      Text(
                        "Maximus Gold",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold,),
                      ),
                      Text("@derlaxy",
                          style: TextStyle(fontSize: 15, color: MyColor.gray)),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     // icon
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Icon(
              //           Icons.man,
              //           color: MyColor.blue,
              //         ),
              //         Icon(
              //           Icons.calendar_today_outlined,
              //           color: MyColor.blue,
              //         ),
              //         Icon(
              //           Icons.email_outlined,
              //           color: MyColor.blue,
              //         ),
              //         Icon(
              //           Icons.phone_android_sharp,
              //           color: MyColor.blue,
              //         ),
              //         Icon(
              //           Icons.lock_outline,
              //           color: MyColor.blue,
              //         ),
              //       ],
              //     ),
              //     // text
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //       Text("Gender" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              //       Text("Birthday" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              //       Text("Email" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              //       Text("Phone Number" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              //       Text("Change password" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              //     ],),
              //     SizedBox(width: 50,),
              //     // detales
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.end,
              //       children: [
              //       Text("Male" , style: TextStyle(color: MyColor.gray),),
              //       Text("30-7-1998" , style: TextStyle(color: MyColor.gray),),
              //       Text("sal@gmail.com" , style: TextStyle(color: MyColor.gray),),
              //       Text("01146060481" , style: TextStyle(color: MyColor.gray),),
              //       Text("************" , style: TextStyle(color: MyColor.gray),),
              //
              //
              //     ],),
              //     Column(children: [
              //       Icon(Icons.arrow_forward_ios),
              //       Icon(Icons.arrow_forward_ios),
              //       Icon(Icons.arrow_forward_ios),
              //       Icon(Icons.arrow_forward_ios),
              //       Icon(Icons.arrow_forward_ios),
              //
              //     ],),
              //   ],
              // )

              // Gender
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    width: 190,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Male",
                      style: TextStyle(color: MyColor.gray),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              // Birthday
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    width: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "30-7-1998",
                      style: TextStyle(color: MyColor.gray),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
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
                    width: 105,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "salalbakr@gmail.com",
                      style: TextStyle(color: MyColor.gray),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              //phone Number
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    width: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "01146060481",
                      style: TextStyle(color: MyColor.gray),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
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
                    width: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "************",
                      style: TextStyle(color: MyColor.gray),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
