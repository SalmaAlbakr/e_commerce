import 'package:flutter/material.dart';

class Offer extends StatelessWidget {
  const Offer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Offer
              Container(
                height: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Offer" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                  ],
                ),
              ),

              // divider
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                //width: 400,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10) , color: Colors.blue,),
                padding: EdgeInsets.all(20),
                //color: Colors.blue,
                child: Text("Use “MEGSL” Coupon For \n Get 90%off" , style: TextStyle(color: Colors.white , fontSize: 20 ,),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/Offer Banner.png" , width: MediaQuery.of(context).size.width,),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Container(
                        //width: MediaQuery.of(context).size.width,
                        child: Image.asset("assets/images/image 51.png", width: MediaQuery.of(context).size.width,)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Text(
                            "90% Off Super Mega Sale",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: Text(
                            "Special birthday Lafyuu",
                            style: TextStyle(fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
