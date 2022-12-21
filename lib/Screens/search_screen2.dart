import 'package:flutter/material.dart';
import 'package:e_commerce/themes/colors.dart';

class Search extends StatelessWidget {
  Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              // search
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // search
                  Container(
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          hintText: "Search",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),

                  // favorite
                  Icon(
                    Icons.favorite_border,
                    color: MyColor.gray,
                    size: 30,
                  ),

                  // notification
                  Icon(
                    Icons.notifications_none_outlined,
                    color: MyColor.gray,
                    size: 30,
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(color: Colors.grey,thickness: 1,),
              ),
              // man
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Man Fashion",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              // man icon
              Container(

                //height: MediaQuery.of(context).size.height,
                height: 250,

                child: GridView(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  children: [
                    // man shirt icon
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: MyColor.gray,
                            radius: 21,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                  "assets/images/icon/shirt.png"),
                            ),),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Man Shirt", style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    //man work equipment
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          CircleAvatar(
                              backgroundColor: MyColor.gray,
                              radius: 21,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                    "assets/images/icon/man bag.png"),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("man work \n equipment" , style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    // man t-shirt
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: MyColor.gray,
                            radius: 21,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                "assets/images/icon/T_shirt.png",),
                            ),),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Man T-Shirt" , style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    // man shoes
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: MyColor.gray,
                            radius: 21,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                "assets/images/icon/man shoes.png",),
                            ),),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Man Shoes" , style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    // man pants
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: MyColor.gray,
                            radius: 21,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                "assets/images/icon/man pants.png",),
                            ),),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Man Pants" , style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    // man underwear
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: MyColor.gray,
                            radius: 21,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                "assets/images/icon/man underwear.png",),
                            ),),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Man Underwear" , style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // women
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Woman Fashion",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              // women icon
              Container(
                //height: MediaQuery.of(context).size.height,
                height: 350,
                child: GridView(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  children: [
                    // dress
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: MyColor.gray,
                            radius: 21,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                  "assets/images/icon/dress.png"),
                            ),),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Dress" , style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    //women t_shirt
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          CircleAvatar(
                              backgroundColor: MyColor.gray,
                              radius: 21,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                    "assets/images/icon/woman t_shirt.png"),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Women T-Shirt" , style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    // woman pants
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: MyColor.gray,
                            radius: 21,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                "assets/images/icon/woman pants.png",),
                            ),),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Woman Pants" , style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    // skirt
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: MyColor.gray,
                            radius: 21,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                "assets/images/icon/skirt.png",),
                            ),),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Skirt" , style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    // woman bag
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: MyColor.gray,
                            radius: 21,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                "assets/images/icon/woman bag.png",),
                            ),),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Woman Bag" , style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    // high heels
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: MyColor.gray,
                            radius: 21,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                "assets/images/icon/woman shoes.png",),
                            ),),
                          SizedBox(
                            height: 5,
                          ),
                          Text("High Heels" , style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    // bikini
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: MyColor.gray,
                            radius: 21,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                "assets/images/icon/bikini.png",),
                            ),),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Bikini" , style: TextStyle(color: Colors.grey),),
                        ],
                      ),
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
