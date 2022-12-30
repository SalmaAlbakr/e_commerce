import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(title: "Add Card" ,buttonAction:  (){}),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Card Number", style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all()
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "Enter Card Number",
                          border: InputBorder.none),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Expiration Date", style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 170,
                          decoration: BoxDecoration(
                              border: Border.all()
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Expiration Date",
                                border: InputBorder.none),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Security Code", style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.all(5),
                          width: 170,
                          decoration: BoxDecoration(
                              border: Border.all()
                          ),
                          child: TextFormField(decoration: InputDecoration(
                              hintText: "Security Code",
                              border: InputBorder.none),),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Card Holder", style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all()
                    ),
                    child: TextFormField(decoration: InputDecoration(
                        hintText: "Card Holder", border: InputBorder.none),),
                  )
                ],
              ),
            ),
            SizedBox(height: 250,),
            MyButton(title: "Add Card", buttonAction: (){}, textColor: Colors.white, buttonColor: MyColor.blue)
          ],
        ),
      ),
    );
  }
}
