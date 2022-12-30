import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(
        title: "Activity",
        buttonAction: () {},
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, int item) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: ListTile(
              leading: Icon(
                Icons.compare_arrows_sharp,
                color: MyColor.blue,
              ),
              title: Container(
                height: 25,
                child: Text(
                  "Transaction",
                  maxLines: 20,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "title of activity",
                    maxLines: 20,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "date",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            )),
          );
        },
      ),
    );
  }
}
