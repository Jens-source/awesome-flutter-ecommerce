import 'package:ecommerce/core/model/product.dart';

import 'category.dart';

class AppData {
  static List<List<Product>> productList = [
    watchesList,
    pantsList,
    shirtsList,
    sneakersList,
    jacketList
  ];

  static List<Category> categoryList = [
    Category(id: 3, name: "Shirts", image: 'assets/shirts/1.png'),
    Category(id: 4, name: "Pants", image: 'assets/pants/1.png'),
    Category(id: 0, name: "Sneakers", image: 'assets/shoes/1.png'),
    Category(id: 1, name: "Jackets", image: 'assets/jackets/1.png'),
    Category(id: 2, name: "Watches", image: 'assets/watches/1.png'),
  ];

  static List<Product> sneakersList = [
    Product(
        id: 1,
        name: 'Nike Air Max 200',
        price: 240.00,
        isSelected: true,
        image: 'assets/shoes/1.png',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'Nike Air Max 97',
        price: 220.00,
        image: 'assets/shoes/2.png',
        category: "Trending Now"),
    Product(
        id: 3,
        name: 'Nike Air Max 200',
        price: 270.00,
        isSelected: true,
        image: 'assets/shoes/3.png',
        category: "Trending Now"),
    Product(
        id: 4,
        name: 'Nike Air Max 92',
        price: 260.00,
        image: 'assets/shoes/4.png',
        category: "Trending Now"),
    Product(
        id: 5,
        name: 'Nike Air Max 94',
        price: 260.00,
        image: 'assets/shoes/5.png',
        category: "Trending Now"),
  ];

  static List<Product> jacketList = [
    Product(
        id: 1,
        name: 'Versace Greca Nappa',
        price: 240.00,
        isSelected: true,
        image: 'assets/jackets/1.png',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'Versace Greca 97',
        price: 220.00,
        image: 'assets/jackets/2.png',
        category: "Trending Now"),
    Product(
        id: 3,
        name: 'Versace Greca',
        price: 270.00,
        isSelected: true,
        image: 'assets/jackets/3.png',
        category: "Trending Now"),
    Product(
        id: 4,
        name: 'Versace Greca Nappa 54',
        price: 260.00,
        image: 'assets/jackets/4.png',
        category: "Trending Now"),
    Product(
        id: 5,
        name: 'Versace Greca Nappa 94',
        price: 260.00,
        image: 'assets/jackets/5.png',
        category: "Trending Now"),
  ];

  static List<Product> watchesList = [
    Product(
        id: 1,
        name: 'Submarine Oyster 41',
        price: 240.00,
        isSelected: true,
        image: 'assets/watches/1.png',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'Configuration Oyster 41',
        price: 220.00,
        image: 'assets/watches/2.png',
        category: "Trending Now"),
    Product(
        id: 3,
        name: 'Waterproof Oyster 41',
        price: 270.00,
        isSelected: true,
        image: 'assets/watches/3.png',
        category: "Trending Now"),
    Product(
        id: 4,
        name: 'Submarine Date 41',
        price: 260.00,
        image: 'assets/watches/4.png',
        category: "Trending Now"),
    Product(
        id: 5,
        name: 'Submarine Cool 41',
        price: 260.00,
        image: 'assets/watches/5.png',
        category: "Trending Now"),
  ];

  static List<Product> shirtsList = [
    Product(
        id: 1,
        name: 'Adidas Sport Nappa',
        price: 240.00,
        isSelected: true,
        image: 'assets/shirts/1.png',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'Nike Sport Nappa',
        price: 220.00,
        image: 'assets/shirts/2.png',
        category: "Trending Now"),
    Product(
        id: 3,
        name: 'Nike Sport Nappa',
        price: 270.00,
        isSelected: true,
        image: 'assets/shirts/3.png',
        category: "Trending Now"),
    Product(
        id: 4,
        name: 'Adidas Sport Nappa',
        price: 260.00,
        image: 'assets/shirts/4.png',
        category: "Trending Now"),
    Product(
        id: 5,
        name: 'Under Armour Sport',
        price: 260.00,
        image: 'assets/shirts/5.png',
        category: "Trending Now"),
  ];

  static List<Product> pantsList = [
    Product(
        id: 1,
        name: 'H&M trainer',
        price: 240.00,
        isSelected: true,
        image: 'assets/pants/1.png',
        category: "Trending Now"),
    Product(
        id: 2,
        name: 'H&M trainer',
        price: 220.00,
        image: 'assets/pants/2.png',
        category: "Trending Now"),
    Product(
        id: 3,
        name: 'H&M trainer',
        price: 270.00,
        isSelected: true,
        image: 'assets/pants/3.png',
        category: "Trending Now"),
    Product(
        id: 4,
        name: 'H&M trainer',
        price: 260.00,
        image: 'assets/pants/4.png',
        category: "Trending Now"),
    Product(
        id: 5,
        name: 'H&M trainer',
        price: 260.00,
        image: 'assets/pants/5.png',
        category: "Trending Now"),
  ];

  static String description =
      "Clean lines, versatile and timeless—the people shoe returns with the Nike Air Max 90. Featuring the same iconic Waffle sole, stitched overlays and classic TPU accents you come to love, it lets you walk among the pantheon of Air. ßNothing as fly, nothing as comfortable, nothing as proven.";
}
