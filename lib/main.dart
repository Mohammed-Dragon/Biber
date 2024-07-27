import 'package:dragon_work/pages/B_data.dart';
import 'package:dragon_work/pages/B_profile.dart';
import 'package:dragon_work/pages/Home.dart';
import 'package:dragon_work/pages/Map.dart';
import 'package:dragon_work/pages/Profile.dart';
import 'package:dragon_work/pages/Welcome.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        splashColor: Color.fromARGB(0, 175, 103, 103),
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      home: WelcomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    B_profile(),
    MyMap(),
    StartPage(),
    Profile(),
    B_data(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[_currentIndex],
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/icons/Tab Bar (1).png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                currentIndex: _currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'lib/assets/icons/bicycle (1).png',
                      height: 17.83,
                      width: 27.39,
                    ),
                    activeIcon: Image.asset(
                      'lib/assets/icons/1.png',
                      height: 80,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'lib/assets/icons/map.fill (1).png',
                      height: 17.38,
                      width: 18.53,
                    ),
                    activeIcon: Image.asset(
                      'lib/assets/icons/2.png',
                      height: 80,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'lib/assets/icons/cart.fill (1).png',
                      height: 17.53,
                      width: 20.43,
                    ),
                    activeIcon: Image.asset(
                      'lib/assets/icons/3.png',
                      height: 80,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'lib/assets/icons/person.fill (1).png',
                      height: 15.89,
                      width: 14.85,
                    ),
                    activeIcon: Image.asset(
                      'lib/assets/icons/4.png',
                      height: 80,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'lib/assets/icons/doc.text.fill (1).png',
                      height: 19.1,
                      width: 25.05,
                    ),
                    activeIcon: Image.asset(
                      'lib/assets/icons/5.png',
                      height: 80,
                    ),
                    label: '',
                  ),
                ],
                selectedFontSize: 0.0,
                unselectedFontSize: 0.0,
                iconSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
