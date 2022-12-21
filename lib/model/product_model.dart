class ProductModel {
  final int id;
  final int price;
  final String title;
  final String description;
  final String brand;
  final String category;
  final String thumbnail;
  final List image;
  final double discountPercentage;
  final double rating;
  final int stock;

  ProductModel({
     required this.id,
    required  this.price,
    required  this.title,
    required  this.description,
    required  this.brand,
    required  this.category,
    required  this.thumbnail,
    required   this.image,
    required  this.discountPercentage,
    required  this.rating,
    required  this.stock});
}
