import 'package:flutter/material.dart';

class MyMap extends StatelessWidget {
  const MyMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/Images/D5.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(children: []),
      ),
    );
  }
}
