import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/Screens/login_screen.dart';
import 'package:e_commerce/themes/colors.dart';

class SinUpScreen extends StatefulWidget {
  SinUpScreen({Key? key}) : super(key: key);

  @override
  State<SinUpScreen> createState() => _SinUpScreenState();
}

class _SinUpScreenState extends State<SinUpScreen> {
  TextEditingController firstName = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController password2 = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),

                //logo image
                Image.asset(
                  "assets/images/Vector.png",
                  height: 80,
                  width: 80,
                ),
                SizedBox(
                  height: 20,
                ),

                // Let's Get Started text
                Text(
                  "Let's Get Started",
                  style: TextStyle(
                    color: MyColor.dark,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                //create an new account text
                Text(
                  "create an new account",
                  style: TextStyle(
                    color: MyColor.gray,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                // enter full name
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: firstName,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "enter your name";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Full Name",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.person_outline_outlined,
                      ),
                    ),
                  ),
                ),
                // enter email
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: email,
                    validator: (String? value) {
                      if (!email.text.contains("@")) {
                        return "enter your Email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Your Email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                      ),
                    ),
                  ),
                ),

                // enter password
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: password,
                    decoration: InputDecoration(
                      hintText: "password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                      ),
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                  ),
                ),

                // enter password again
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: password2,
                    validator: (String? value) {
                      if (password.text != password2.text) {
                        return "enter the same password";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "password Again",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Color(0xff9098B1),
                      ),
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                  ),
                ),

                // sign up button
                Container(
                  margin: EdgeInsets.only(
                      left: 10, right: 10, top: 2.5, bottom: 2.5),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      signIn();
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),

                // sign in button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "have a account? ",
                      style: TextStyle(fontSize: 17),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return LoginScreen();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "sign in",
                          style: TextStyle(fontSize: 17),
                        ),
                        style: ButtonStyle(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void signIn() async {
    try {
      final response =
          await Dio().post("{{url}}register", data: {
            "name": firstName.text,
            "phone": "12345678",
            "email": email.text,
            "password": password.text,
            "image": "/9j/"
      });
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
      print(response);
    }
    on DioError catch (e) {
      print(e.response);
      if (e.response!.statusCode == 400) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: Text("You should enter the field")));
      }
    }
  }
}
