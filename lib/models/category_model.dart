import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;
  String Price;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
    required this.Price,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
      name: 'MARK I',
      iconPath: 'lib/assets/Images/Electric%20Bicycle.I05 3 (4).png',
      boxColor: Colors.white,
      Price: '\$4/Hr',
    ));

    categories.add(CategoryModel(
      name: 'MARK II',
      iconPath: 'lib/assets/Images/Cycle Image 2 (2).png',
      boxColor: Colors.white,
      Price: '\$7/Hr',
    ));

    categories.add(CategoryModel(
      name: 'MARK III',
      iconPath: 'lib/assets/Images/Electric%20Bicycle.I05 3 (2).png',
      boxColor: Colors.white,
      Price: '\$6/Hr',
    ));

    categories.add(CategoryModel(
      name: 'MARK IV',
      iconPath: 'lib/assets/Images/Electric%20Bicycle.I05 3 (3).png',
      boxColor: Colors.white,
      Price: '\$10/Hr',
    ));

    return categories;
  }
}
