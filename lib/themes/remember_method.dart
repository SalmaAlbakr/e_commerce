import 'package:e_commerce/Screens/login_screen.dart';
import 'package:e_commerce/Screens/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RememberScreen extends StatelessWidget {
  const RememberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot) {
        var isLogin = snapshot.data?.getBool("myEmail") ?? false;
        return Scaffold(
          body: isLogin ? NavigationScreen() : LoginScreen(),
        );
      },
    );
  }
}