import 'package:flutter/material.dart';

class B_data extends StatelessWidget {
  const B_data({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/Images/D8 (1).png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(children: []),
      ),
    );
  }
}
