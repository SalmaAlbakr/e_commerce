import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(title: "Address", buttonAction: () {}),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 600,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, int item) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: MyColor.gray)),
                      height: 200,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text("address"),
                          Text("0164485687965"),
                          Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text("Edit"),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(MyColor.blue),
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.delete_outline,
                                    color: MyColor.gray,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MyButton(
              title: "Add Address",
              buttonAction: () {},
              textColor: Colors.white,
              buttonColor: MyColor.blue,
            ),
          )
        ],
      ),
    );
  }
}
