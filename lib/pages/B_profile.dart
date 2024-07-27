import 'package:flutter/material.dart';

class B_profile extends StatefulWidget {
  const B_profile({Key? key}) : super(key: key);

  @override
  State<B_profile> createState() => _B_profileState();
}

class _B_profileState extends State<B_profile> {
  int selectedIndex = 1;
  String selectedImage = "lib/assets/more/Bicycle.png";
  List<String> imagesToShow = [
    "lib/assets/more/Bicycle.png",
    "lib/assets/more/Electric.png",
    "lib/assets/more/Road.png",
    "lib/assets/more/Road (1).png",
    "lib/assets/more/Road (2).png",
  ];
  List<String> newimagesToShow = [
    "lib/assets/more/Electric (2).png",
    "lib/assets/more/Electric (1).png",
    "lib/assets/more/Electric (3).png",
    "lib/assets/more/Electric (4).png",
    "lib/assets/more/Electric (5).png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/a (2).png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 25, left: 30, right: 30, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Bicycle Profile',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "lib/assets/Cart Button (1).png",
                      width: 44,
                      height: 44,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          "lib/assets/okay.png",
                          width: 333,
                          height: 235,
                        ),
                      ),
                      Positioned(
                        top: 25,
                        left: 50,
                        child: Image.asset(
                          "lib/assets/Combat(5) 2 1.png",
                          width: 222,
                          height: 181,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Transform.rotate(
                      angle: -0.12,
                      child: Row(
                        children: List.generate(
                          imagesToShow.length,
                          (index) => _buildImage(index),
                        ),
                      ),
                    ),
                  ),
                  buildSelectedImageGestureDetector(),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildImage(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 14),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
            selectedImage = imagesToShow[index];
          });
        },
        child: Transform.rotate(
          angle: 0.12,
          child: Image.asset(
            index == selectedIndex
                ? newimagesToShow[index]
                : imagesToShow[index],
            width: 52,
            height: 52,
          ),
        ),
      ),
    );
  }

  Widget buildSelectedImageGestureDetector() {
    switch (selectedImage) {
      case "lib/assets/more/Bicycle.png":
        {
          return All();
        }
      case "lib/assets/more/Electric.png":
        return buildElectricGestureDetector();
      case "lib/assets/more/Road.png":
        return buildRoad1GestureDetector();
      case "lib/assets/more/Road (1).png":
        return buildRoad2GestureDetector();
      case "lib/assets/more/Road (2).png":
        return buildRoadGestureDetector();
      default:
        return SizedBox.shrink();
    }
  }

  Widget All() {
    return Column(
      children: [
        buildElectricGestureDetector(),
        buildRoad1GestureDetector(),
        buildRoad2GestureDetector(),
        buildRoadGestureDetector(),
      ],
    );
  }

  Widget buildElectricGestureDetector() {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: GestureDetector(
        onTap: () {},
        child: Image.asset(
          "lib/assets/more/Group 124 (1).png",
          width: 323,
          height: 276.62,
        ),
      ),
    );
  }

  Widget buildRoad1GestureDetector() {
    return GestureDetector(
      onTap: () {},
      child: Image.asset(
        "lib/assets/more/Items 1.png",
        width: 323,
        height: 276.62,
      ),
    );
  }

  Widget buildRoad2GestureDetector() {
    return GestureDetector(
      onTap: () {},
      child: Image.asset(
        "lib/assets/more/Items 2.png",
        width: 323,
        height: 276.62,
      ),
    );
  }

  Widget buildRoadGestureDetector() {
    return GestureDetector(
      onTap: () {},
      child: Image.asset(
        "lib/assets/more/Group 541.png",
        width: 323,
        height: 276.62,
      ),
    );
  }
}
