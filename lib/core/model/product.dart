class Product {
  int id;
  String name;
  String category;
  String image;
  double price;
  bool isSelected;
  Product(
      {required this.id,
      required this.name,
      required this.category,
      required this.price,
      this.isSelected = false,
      required this.image});
}
