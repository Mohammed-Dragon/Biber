import 'package:flutter/material.dart';

class CategoryModel3 {
  String name;
  String iconPath;
  Color boxColor;
  String Price;

  CategoryModel3({
    required this.name,
    required this.iconPath,
    required this.boxColor,
    required this.Price,
  });

  static List<CategoryModel3> getCategories() {
    List<CategoryModel3> categories = [];

    categories.add(CategoryModel3(
      name: 'MARK V',
      iconPath: 'lib/assets/Images/Untitled design (10) 1 (2).png',
      boxColor: Color.fromARGB(0, 24, 28, 36),
      Price: '\$6/Hr',
    ));

    categories.add(CategoryModel3(
      name: 'MARK VI',
      iconPath: 'lib/assets/Images/Untitled design (12) 1 (1).png',
      boxColor: Color.fromARGB(0, 24, 28, 36),
      Price: '\$7/Hr',
    ));
    return categories;
  }
}
