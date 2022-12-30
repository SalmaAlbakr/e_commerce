import 'package:e_commerce/themes/my_widget.dart';
import 'package:flutter/material.dart';


class Genderscreen extends StatefulWidget {
  const Genderscreen({Key? key}) : super(key: key);


  @override
  State<Genderscreen> createState() => _GenderscreenState();
}
List<String> itemsList = ["Male","Female","other"];
String? selectedItem = "Male";
class _GenderscreenState extends State<Genderscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Gender ", buttonAction: (){}),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose Gender",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(height: 15),
              //عاسزه احطها ف كونتينر عشان الشكل و الحجم بدل ما تغطي علي المنيو نفسها
              DropdownButton<String>(
                value: selectedItem,
                items: itemsList.map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(item,style: TextStyle(fontSize: 15,color: Colors.blueAccent)))).toList(),
                onChanged: (item)=>setState( ()=> selectedItem = item),
              ),
              SizedBox(height: 500),
              MyButton(title: "Save", buttonAction: (){}, textColor: Colors.white, buttonColor: Colors.blue)
            ],
          ),
        ),
      ),
    );
  }
}