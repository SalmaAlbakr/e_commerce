class CartTitle {
  final int id;
  final List<CartOneProduct> products;
  final int total;
  final int discountedTotal;
  final int userid;
  final int totalProducts;
  final int totalQuantity;

  CartTitle(
      {required this.id,
      required this.products,
      required this.total,
      required this.discountedTotal,
      required this.userid,
      required this.totalProducts,
      required this.totalQuantity});
}

class CartOneProduct {
  final int id;
  final String title;
  final int price;
  final int quantity;
  final int total;
  final double discountedPercentage;
  final int discountedPrice;

  CartOneProduct({
     required this.id,
     required this.title,
     required this.price,
     required this.quantity,
     required this.total,
     required this.discountedPercentage,
     required this.discountedPrice});
}
