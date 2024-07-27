import 'package:dragon_work/models/category_model.dart';
import 'package:dragon_work/models/category_model_2.dart';
import 'package:dragon_work/models/category_model_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartPage extends StatelessWidget {
  StartPage({super.key});
  List<CategoryModel> categories = [];
  List<CategoryModel2> categories2 = [];
  List<CategoryModel3> categories3 = [];
  void _getCategories() {
    categories = CategoryModel.getCategories();
    categories2 = CategoryModel2.getCategories();
    categories3 = CategoryModel3.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      backgroundColor: Color(0xff242C3B),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose your bike',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "lib/assets/Cart Button (2).png",
                      width: 44,
                      height: 44,
                    ),
                  ),
                ],
              ),
            ),
            Search(),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Best deals',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  height: 274,
                  child: Container(
                    color: Color(0xff242C3B),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 25,
                      ),
                      itemCount: categories3.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 308,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(0, 0, 0, 0),
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 320,
                                height: 190,
                                color: Color.fromARGB(0, 0, 0, 0),
                                child: Image.asset(
                                  categories3[index].iconPath,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Name:  ' + categories3[index].name,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 17),
                                        ),
                                        Text(
                                          'Price:  ' + categories3[index].Price,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 17),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 160,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 33, 82, 243),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Go Now',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Container(
                                            height: 24,
                                            width: 24,
                                            child: VerticalDivider(
                                              color: Colors.white,
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Popular',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 200,
                  color: Color(0xff242C3B),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 25,
                    ),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 150,
                        decoration: BoxDecoration(
                            color: categories[index].boxColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 130,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Image.asset(
                                categories[index].iconPath,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Name: ' + categories[index].name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 4, 0, 38),
                                      fontSize: 17),
                                ),
                                Text(
                                  'Price: ' + categories[index].Price,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 4, 0, 38),
                                      fontSize: 17),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'New',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 200,
                  color: Color(0xff242C3B),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 25,
                    ),
                    itemCount: categories2.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 150,
                        decoration: BoxDecoration(
                            color: categories2[index].boxColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 140,
                              height: 130,
                              child: Image.asset(
                                categories2[index].iconPath,
                              ),
                            ),
                            Text(
                              categories2[index].name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 17),
                            ),
                            Text(
                              'Price: ' + categories2[index].Price,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 17),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Station III',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 200,
                  color: Color(0xff242C3B),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 25,
                    ),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 150,
                        decoration: BoxDecoration(
                            color: categories[index].boxColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              height: 130,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Image.asset(
                                categories[index].iconPath,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Name: ' + categories[index].name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 4, 0, 38),
                                      fontSize: 17),
                                ),
                                Text(
                                  'Price: ' + categories[index].Price,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 4, 0, 38),
                                      fontSize: 17),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }

  Container Search() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(14),
              child: SvgPicture.asset('lib/assets/icons/Vector (4).svg'),
            ),
            suffixIcon: Container(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Color.fromARGB(255, 0, 0, 0),
                      indent: 10,
                      endIndent: 10,
                      thickness: 0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(
                          'lib/assets/icons/furnitur-icon.svg'),
                    ),
                  ],
                ),
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none),
            hintText: 'Search for bicycles',
            hintStyle: TextStyle(color: Color.fromARGB(121, 77, 77, 77))),
      ),
    );
  }
}
