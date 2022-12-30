import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class OfferNotificationScreen extends StatelessWidget {
  const OfferNotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: "Notification",
        buttonAction: () {},
      ),
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, int item) {
            return Container(
                child: ListTile(
                  leading: Icon(Icons.local_offer_outlined , color: MyColor.blue,),
                  title: Container(
                      height: 25,
                      child: Text("Special offer 25% off" ,maxLines: 20,
                        overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("title of offer" ,maxLines: 20,
                        overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 15),),
                      SizedBox(height: 5,),
                      Text("date" , style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ));
          }),
    );
  }
}
