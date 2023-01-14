import 'package:flutter/material.dart';

AppBar buildAppBar({required String title, required Function buttonAction , Widget? blank }) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.5,
    title: Row(
      children: [
        IconButton(
          onPressed: () => buttonAction,
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Container(
          child: blank,
        )
      ],
    ),
  );
}

Container MyButton(
    {required String title,
    required Color textColor,
    required Color buttonColor,
      required void Function()? buttonAction}) {
  return Container(
    width: 500,
    height: 50,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
      ),
      onPressed: buttonAction,
      child: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    ),
  );
}
