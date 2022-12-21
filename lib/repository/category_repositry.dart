import 'package:dio/dio.dart';
import 'package:e_commerce/model/category_model.dart';

class CatRepo {
  Future<List<CategoryModel>> getAllCat() async {
    final response =
    await Dio().get("https://api.escuelajs.co/api/v1/categories/");

    final listOfCat = List<CategoryModel>.from(
      response.data.map(
        (value) => CategoryModel(
          id: value["id"],
          name: value["name"],
          image: value["image"],
        ),
      ),
    );
    return listOfCat;
  }
}



// class cat extends StatefulWidget {
//   const cat({Key? key}) : super(key: key);
//
//   @override
//   State<cat> createState() => _catState();
// }
//
// class _catState extends State<cat> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: FutureBuilder<List<CategoryModel>>(
//             future: CatRepo().getAllCat(),
//             builder: (BuildContext context,
//                 AsyncSnapshot<List<CategoryModel>> snapshot) {
//               final ListCat = snapshot.data;
//               if (snapshot.connectionState == ConnectionState.waiting){
//                 return CircularProgressIndicator();
//               }
//               if(snapshot.connectionState == ConnectionState.done){
//                return Container(
//                  height: 100,
//                  child: ListView.builder(
//                    scrollDirection: Axis.horizontal,
//                    itemCount: ListCat!.length,
//                    itemBuilder: (BuildContext context, int item) {
//                      return Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: Column(
//                          children: [
//                            CircleAvatar(
//                              radius: 30,
//                              backgroundColor: MyColor.gray,
//                              child: CircleAvatar(
//                                radius: 29,
//                                backgroundColor: Colors.white,
//                                child: Image.network(ListCat[item].image),
//                              ),
//                            ),
//                            SizedBox(
//                              height: 5,
//                            ),
//                            Text(
//                              "${ListCat[item].name}",
//                              style: TextStyle(fontWeight: FontWeight.bold),
//                            )
//                          ],
//                        ),
//                      );
//                    },
//                  ),
//                );
//              }if(snapshot.data!.isEmpty){
//                 return Text("data");
//               }if(snapshot.connectionState == ConnectionState.none){
//                 return Text("data");
//               }
//                 return Text("other");
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
