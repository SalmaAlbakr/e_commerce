import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/Screens/navigation_bar.dart';
import 'package:e_commerce/Screens/sin_up_screen.dart';
import 'package:e_commerce/thems/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameControlar = TextEditingController();
  TextEditingController emailControlar = TextEditingController();
  TextEditingController paswoodControlar = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  bool rememberMe = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  // logo image
                  Image.asset(
                    "assets/images/Vector.png",
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // welcome to lafyuu
                  Text(
                    "Welcome to Lafyuu",
                    style: TextStyle(
                      color: MyColor.dark,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  // sign in to continue
                  Text(
                    "sign in to continue",
                    style: TextStyle(
                      color: MyColor.gray,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  // email
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: emailControlar,
                      // validator بيتحكم بالشروط بتاعتي
                      validator: (String? value) {
                        if (!value!.contains("@")) {
                          return "the email must have @";
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

                  // enter your password
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: paswoodControlar,
                      // validator بيتحكم بالشروط بتاعتي
                      // validator: (String? value) {
                      //   if (value!.length < 4 &&
                      //       (!value.contains("@") ||
                      //           !value.contains("#") ||
                      //           !value.contains("*"))) {
                      //     return "the pasward must have @ or # or *";
                      //   }
                      //   return null;
                      // },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_off,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: rememberMe,
                          onChanged: (value) {
                            setState(() {
                              rememberMe = value!;
                            });
                          }),
                      Text(
                        "Remember Me",
                      )
                    ],
                  ),
                  //sign in button
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 2.5,
                      bottom: 2.5,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        if (rememberMe == true){
                          RemmemberMe();
                        }
                        if (formKey.currentState!.validate()) {
                          signIn();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("You shoud enter the field")));
                        }
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromWidth(400)),
                    ),
                  ),

                  // divider row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 150,
                        child: Divider(
                          color: Colors.grey[300],
                          thickness: 2.5,
                        ),
                      ),
                      Text(
                        "OR",
                        style: TextStyle(
                            fontSize: 20,
                            color: MyColor.gray,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 150,
                        child: Divider(
                          color: Colors.grey[300],
                          thickness: 2.5,
                        ),
                      ),
                    ],
                  ),

                  // login with google button
                  Container(
                    height: 45,
                    margin: EdgeInsets.only(
                        left: 10, right: 10, top: 2.5, bottom: 2.5),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/Group 121.png",
                            width: 30,
                            height: 30,
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            "Login with Google",
                            style: TextStyle(
                              color: MyColor.gray,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(
                          color: Color(0xffEBF0FF),
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),

                  // login with facebook
                  Container(
                    height: 45,
                    margin: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 2.5,
                      bottom: 2.5,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/facebook.png",
                            width: 30,
                            height: 30,
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            "Login with Facebook",
                            style: TextStyle(
                              color: MyColor.gray,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(
                          color: Color(0xffEBF0FF),
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),

                  // forget password button
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Forgot password?"),
                      style: ButtonStyle(),
                    ),
                  ),

                  // register button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have a account? "),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return SinUpScreen();
                                },
                              ),
                            );
                          },
                          child: Text("Register"),
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
      ),
    );
  }

  void signIn() async {
    try {
      final response = await Dio()
          .post("https://api.escuelajs.co/api/v1/auth/login", data: {
        "email": emailControlar.text,
        "password": paswoodControlar.text
      });
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NavigationScreen()),
      );

      // final myAccess = response.data["access_token"];
      //
      // final prefs = await SharedPreferences.getInstance();
      //
      // await prefs.setString('AccessKey', myAccess);

      // final test = await prefs.get('AccessKey');
      //
      // print("my access is : $test");
    }
    // catch(e){
    //   print("$e");
    // }
    on DioError catch (e) {
      print(e.response);
      if (e.response!.statusCode == 400) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.red,
            content: Text("You should enter the field")));
      }
    }
    // print(response);
  }
  void RemmemberMe() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool("myEmail", rememberMe);
  }
}
