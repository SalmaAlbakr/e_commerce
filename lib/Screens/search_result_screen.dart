import 'package:e_commerce/themes/colors.dart';
import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({Key? key}) : super(key: key);

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // search
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(border: Border.all()),
              width: 250,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  hintText: "Search",
                ),
              ),
            ),

            // favorite
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.sort,
                color: MyColor.gray,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.filter_alt_outlined,
                color: MyColor.gray,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Result",
                  style: TextStyle(color: MyColor.gray, fontSize: 20),
                ),
                Text(
                  "Search name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 600,
                child:
                // GridView.builder(
                //   itemCount: 10,
                //   shrinkWrap: true,
                //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 2),
                //   itemBuilder: (BuildContext context, int index) {
                //     return Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: Container(
                //         height: 100,
                //         padding: EdgeInsets.all(5),
                //         decoration: BoxDecoration(
                //             border: Border.all(color: MyColor.gray)),
                //         child: Column(
                //           children: [
                //             Image.asset("assets/images/image Product.png"),
                //             Text(
                //               "FS-Nike Air",
                //               style: TextStyle(
                //                   color: Colors.black,
                //                   fontWeight: FontWeight.bold),
                //             ),
                //             Text(
                //               "\$299.43",
                //               style: TextStyle(
                //                 color: MyColor.blue,
                //               ),
                //             ),
                //             Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               children: [
                //                 Text(
                //                   "\$ 534.33",
                //                   style: TextStyle(
                //                       color: MyColor.gray,
                //                       decoration: TextDecoration.lineThrough),
                //                 ),
                //                 Text(
                //                   "24% off",
                //                   style: TextStyle(
                //                     color: MyColor.red,
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ],
                //         ),
                //       ),
                //     );
                //   },
                // )
                // search not found
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: MyColor.blue,
                      child: Icon(

                        Icons.highlight_off_sharp,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Product Not Found",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "thank you for shopping using lafyuu",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyButton(title: "Back To Home", buttonAction: (){}, textColor: Colors.white, buttonColor: MyColor.blue)
                  ],
                ),
                ),
          ),
        ],
      ),
    );
  }
}
