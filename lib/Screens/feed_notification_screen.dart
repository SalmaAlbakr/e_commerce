import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class FeedNotificationScreen extends StatelessWidget {
  const FeedNotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Feed", buttonAction: (){}),
      body: ListView.builder(
        itemCount: 3,
          itemBuilder: (context , int item){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/black.png" , height: 50, width: 50,),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text("New Product" ,maxLines: 20,
                      overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                    SizedBox(height: 10,),
                    Text("title of activity" ,maxLines: 20,
                      overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 15),),
                    SizedBox(height: 5,),
                    Text("date" , style: TextStyle(fontSize: 15)),
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
