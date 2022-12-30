import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Notification",buttonAction:  (){}),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.local_offer_outlined , color: MyColor.blue,),
                ),
                Text("Offer" , style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 270,),
                CircleAvatar(backgroundColor: Colors.red , child: Text("1"), radius: 15,)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.list_alt , color: MyColor.blue,),
                ),
                Text("Feed" , style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 270,),
                CircleAvatar(backgroundColor: Colors.red , child: Text("1"), radius: 15,)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.notifications_none_outlined , color: MyColor.blue,),
                ),
                Text("Activity " , style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 250,),
                CircleAvatar(backgroundColor: Colors.red , child: Text("1"), radius: 15,)
              ],
            ),

          ],
        ),
      ),
    );
  }
}
