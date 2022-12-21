import 'package:flutter/material.dart';
import 'package:e_commerce/themes/colors.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List manIcon = [
    "assets/images/icon/man bag.png",
    "assets/images/icon/man pants.png",
    "assets/images/icon/man shoes.png",
    "assets/images/icon/man underwear.png",
    "assets/images/icon/T_shirt.png",
    "assets/images/icon/T_shirt.png",
    "assets/images/icon/T_shirt.png",
    "assets/images/icon/shirt.png"
  ];

  List womenIcon = [
    "assets/images/icon/bikini.png",
    "assets/images/icon/dress.png",
    "assets/images/icon/skirt.png",
    "assets/images/icon/woman bag.png",
    "assets/images/icon/woman pants.png",
    "assets/images/icon/woman shoes.png",
    "assets/images/icon/woman t_shirt.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: MyColor.blue,
                          ),
                          hintText: "Search",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.favorite,
                    color: MyColor.blue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.notifications,
                    color: MyColor.blue,
                  ),
                ],
              ),
              Text(
                "Man Fashion",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                // height: 200,
                child: GridView.builder(
                    itemCount: manIcon.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int i) {
                      return CircleAvatar(
                        backgroundColor: Colors.cyan,
                        radius: 31,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          child: Image.asset(manIcon[i]),
                        ),
                      );
                    }),
              ),
              Text(
                "Woman Fashion",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                child: GridView.builder(
                    itemCount: womenIcon.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int i) {
                      return Container(
                        color: Colors.blueAccent,
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          backgroundColor: Colors.white54,
                          child: Image.asset(womenIcon[i]),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
