


class CategoryProductModel {
  CategoryProductModel({
    required this.id,
    required this.name,
    required this.image,
  });

  int id;
  String name;
  String image;

  factory CategoryProductModel.fromJson(Map<String, dynamic> json) => CategoryProductModel(
    id: json["id"],
    name: json["name"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
  };
}
