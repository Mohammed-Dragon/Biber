import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/Images/D7.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(children: []),
      ),
    );
  }
}
