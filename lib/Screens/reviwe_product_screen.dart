import 'package:e_commerce/Screens/review_screen.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "5 Review ", buttonAction: () {}),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    borderOnForeground: true,
                    color: Colors.grey,
                    child: Row(
                      children: [
                        SizedBox(height: 15),
                        SizedBox(width: 10),
                        Text(
                          "All Review",
                          style: TextStyle(color: Colors.white70),
                        ),
                        SizedBox(height: 15),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Card(
                    borderOnForeground: true,
                    child: Row(
                      children: [
                        SizedBox(height: 15),
                        SizedBox(width: 10),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "1",
                          style: TextStyle(color: Colors.blue),
                        ),
                        SizedBox(height: 15),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Card(
                    borderOnForeground: true,
                    child: Row(
                      children: [
                        SizedBox(height: 15),
                        SizedBox(width: 10),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "2",
                          style: TextStyle(color: Colors.blue),
                        ),
                        SizedBox(height: 15),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Card(
                    margin: EdgeInsets.all(10),
                    borderOnForeground: true,
                    child: Row(
                      children: [
                        SizedBox(height: 15),
                        SizedBox(width: 10),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "3",
                          style: TextStyle(color: Colors.blue),
                        ),
                        SizedBox(height: 15),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
              ),
              Wrap(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset("assets/Profile Picture.png"),
                      ),
                      SizedBox(width: 5),
                      Text("James Lawson",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            child: RatingBar.builder(
                                itemSize: 20,
                                itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      size: 1,
                                      color: Colors.amber,
                                    ),
                                onRatingUpdate: (rating) {}),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "air max are always very important lift ,"
                      "clean and just perfect in every day , so we can "
                      "also make friend with all type of people ",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                          fontSize: 15)),
                ],
              ),
              SizedBox(height: 10),
              Wrap(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset("assets/Profile Picture.png"),
                      ),
                      SizedBox(width: 5),
                      Text("Laura Octavian",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            child: RatingBar.builder(
                                itemSize: 20,
                                itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      size: 1,
                                      color: Colors.amber,
                                    ),
                                onRatingUpdate: (rating) {}),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "air max are always very important lift ,"
                      "clean and just perfect in every day , so we can "
                      "also make friend with all type of people ",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                          fontSize: 13)),
                ],
              ),
              SizedBox(height: 10),
              Wrap(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset("assets/Profile Picture.png"),
                      ),
                      SizedBox(width: 5),
                      Text("Jhonson Bridge",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            child: RatingBar.builder(
                                itemSize: 20,
                                itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      size: 1,
                                      color: Colors.amber,
                                    ),
                                onRatingUpdate: (rating) {}),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "air max are always very important lift ,"
                      "clean and just perfect in every day , so we can "
                      "also make friend with all type of people ",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                          fontSize: 13,),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset("assets/Profile Picture.png"),
                      ),
                      SizedBox(width: 5),
                      Text("Griffin Rod",
                          style: TextStyle(fontWeight: FontWeight.bold,),),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            child: RatingBar.builder(
                                itemSize: 20,
                                itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      size: 1,
                                      color: Colors.amber,
                                    ),
                                onRatingUpdate: (rating) {}),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "air max are always very important lift ,"
                    "clean and just perfect in every day , so we can "
                    "also make friend with all type of people ,"
                    ""
                    "December 10,2018",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              MyButton(
                title: "Write Review",
                buttonAction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReviewScreen(),
                    ),
                  );
                },
                textColor: Colors.white,
                buttonColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
