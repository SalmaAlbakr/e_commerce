import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  RangeValues values = const RangeValues(0.1, 0.5);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(),values.end.toString());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
                Icons.disabled_by_default_outlined,
                color: Colors.grey),
            SizedBox(width: 10,),
            Text("Filter Search",style: TextStyle(color: Colors.black),),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price Range",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "\$1.245",
                        style: TextStyle(color: Colors.grey),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                  SizedBox(width: 20),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "\$9.344",
                        style: TextStyle(color: Colors.grey),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                ],
              ),
              Center(
                child: RangeSlider(values: values,divisions: 6,labels: labels, onChanged: (newValues){setState(() {
                  values = newValues;
                });}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("MIN"),
                    SizedBox(width: 250,),
                    Text("MAX"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Condition",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(width: 15,),
                  ],
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "New",
                        style: TextStyle(color: Colors.grey),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                  SizedBox(width: 7),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Used",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                  SizedBox(width: 7),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Not Specified",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Buying Format",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "All Listings",
                        style: TextStyle(color: Colors.grey),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                  SizedBox(width: 7),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Accepts Offers",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                  SizedBox(width: 7),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Auction",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Buy It Now",
                        style: TextStyle(color: Colors.blueAccent),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "ClassifiedAds",
                        style: TextStyle(color: Colors.blueAccent),
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Item Location",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "New",
                        style: TextStyle(color: Colors.grey),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                  SizedBox(width: 7),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Used",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                  SizedBox(width: 7),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Not Specified",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Show Only",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "New",
                        style: TextStyle(color: Colors.grey),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                  SizedBox(width: 7),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Used",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                  SizedBox(width: 7),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Not Specified",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white))),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              MyButton(
                  title: "Apply",
                  buttonAction: () {},
                  textColor: Colors.white,
                  buttonColor: Colors.blue)
            ],
          ),
        ),
      ),
    );
  }
}
