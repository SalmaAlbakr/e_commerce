import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';


class ShipTo extends StatelessWidget {
  const ShipTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          title: "Ship To ",
          buttonAction: () {},blank: Icon(Icons.add)
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Card(
                borderOnForeground: true,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Priscekilla",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "3711 spring Hill Rd undefinedTallahasse"
                            "Nevada 5284 united states   "
                            ""
                            ""
                            "++99 1234567890,",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Edit"),
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.restore_from_trash_outlined,
                            color: Colors.grey,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                borderOnForeground: true,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ahmed Khaidir",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "3711 spring Hill Rd undefinedTallahasse"
                            "Nevada 5284 united states   "
                            ""
                            ""
                            "++99 1234567890,",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Edit"),
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.restore_from_trash_outlined,
                            color: Colors.grey,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 200),
              MyButton(
                  title: "Next",
                  buttonAction: () {},
                  textColor: Colors.white,
                  buttonColor: Colors.blue)
            ],
          ),
        ),
      ),
    );
  }
}
