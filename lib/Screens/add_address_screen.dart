import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';

class addAddress extends StatefulWidget {
  const addAddress({Key? key}) : super(key: key);

  @override
  State<addAddress> createState() => _addAddressState();
}

class _addAddressState extends State<addAddress> {
  List<String> itemsList = ["Egypt","UnitedState","korea","turkey"];
  String? selectedItem = "Egypt";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Add Address ", buttonAction: (){}),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: 15),
              Text(
                "Country or region ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              DropdownButton<String>(
                value: selectedItem,
                items: itemsList.map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(item,style: TextStyle(fontSize: 15)))).toList(),
                onChanged: (item)=>setState( ()=> selectedItem = item),
              ),
              Text(
                "First Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 20),

              TextFormField(
                decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(),
                ),),
              SizedBox(
                height: 10,
              ),
              Text(
                "Last Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(),
                ),),
              SizedBox(
                height: 10,
              ),
              Text(
                "Street Address",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(),
                ),),
              SizedBox(
                height: 10,
              ),
              Text(
                "Street Address 2 (optional)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(),
                ),),
              SizedBox(
                height: 10,
              ),
              Text(
                "City",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(),
                ),),
              SizedBox(
                height: 10,
              ),
              Text(
                "Zip code",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(),
                ),),
              SizedBox(
                height: 10,
              ),
              Text(
                "Phone Number",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "",
                  border: OutlineInputBorder(),
                ),),
              SizedBox(
                height: 10,
              ),
              MyButton(title: "Add Address", buttonAction: (){}, textColor: Colors.white, buttonColor: Colors.blue)
            ],
          ),
        ),
      ),
    );
  }
}