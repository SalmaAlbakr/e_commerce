import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(title: "Write Review",buttonAction:  (){}),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text("Please write Overall level of satisfaction with your shipping / Delivery Service" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
            SizedBox(height: 10,),
            RatingBar(
              ratingWidget: RatingWidget(full: Icon(Icons.star , color: Colors.amberAccent,), half: Icon(Icons.star_half, color: Colors.amberAccent,), empty: Icon(Icons.star_border, color: Colors.amberAccent,)), onRatingUpdate: (rating) {}),
            SizedBox(height: 10,),
            Text("Write Your Review" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
            SizedBox(height: 10,),
            Container(

              decoration :BoxDecoration(
                  border: Border.all(color: MyColor.gray)),
              height: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Write your review here" ,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text("Add Photo" ,style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20), ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  width: 70,
                  decoration :BoxDecoration(
                      border: Border.all(color: MyColor.gray)),
                  height: 70,
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    
  }
}
