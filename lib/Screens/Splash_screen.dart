import 'dart:async';
import 'package:flutter/material.dart';
import 'package:e_commerce/Screens/login_screen.dart';
import 'package:e_commerce/Screens/navigation_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5) , () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) {
            return RememberScreen();
          },
        ),
      );
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Container(
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/single icon White.png",
                height: 500,
                width: 500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RememberScreen extends StatelessWidget {
  const RememberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot){
        var isLogin = snapshot.data?.getBool("myEmail") ?? false;
        return Scaffold(
          body: isLogin ? NavigationScreen() : LoginScreen(),
        );
      },
    );
  }
}
