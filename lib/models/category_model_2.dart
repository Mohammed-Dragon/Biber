import 'package:flutter/material.dart';

class CategoryModel2 {
  String name;
  String iconPath;
  Color boxColor;
  String Price;

  CategoryModel2({
    required this.name,
    required this.iconPath,
    required this.boxColor,
    required this.Price,
  });

  static List<CategoryModel2> getCategories() {
    List<CategoryModel2> categories = [];

    categories.add(CategoryModel2(
      name: 'MARK I',
      iconPath: 'lib/assets/Images/Electric%20Bicycle.I05 3 (3).png',
      boxColor: Color.fromARGB(209, 7, 50, 194),
      Price: '\$5/Hr',
    ));

    categories.add(CategoryModel2(
      name: 'MARK II',
      iconPath: 'lib/assets/Images/Electric%20Bicycle.I05 3 (2).png',
      boxColor: Color.fromARGB(209, 7, 50, 194),
      Price: '\$6/Hr',
    ));

    categories.add(CategoryModel2(
      name: 'MARK III',
      iconPath: 'lib/assets/Images/Cycle Image 2 (2).png',
      boxColor: Color.fromARGB(209, 7, 50, 194),
      Price: '\$10/Hr',
    ));

    categories.add(CategoryModel2(
      name: 'MARK IV',
      iconPath: 'lib/assets/Images/Electric%20Bicycle.I05 3 (4).png',
      boxColor: Color.fromARGB(209, 7, 50, 194),
      Price: '\$11/Hr',
    ));

    return categories;
  }
}
