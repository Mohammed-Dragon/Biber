import 'package:dragon_work/pages/auth_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  late PageController _pageController;
  int _currentPageIndex = 0;
  static const List<String> _images = [
    'lib/assets/1.webp',
    'lib/assets/2.webp',
    'lib/assets/3.webp',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPageIndex);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    for (String imagePath in _images) {
      precacheImage(AssetImage(imagePath), context);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _changeImage() {
    setState(() {
      _currentPageIndex = (_currentPageIndex + 1) % _images.length;
    });
    _pageController.animateToPage(
      _currentPageIndex,
      duration: Duration(milliseconds: 900),
      curve: Curves.ease,
    );
  }

  void _navigateToLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AuthPage()),
    );
  }

  Widget _buildArrowButton() {
    if (_currentPageIndex != _images.length - 1) {
      return Positioned(
        bottom: 37.0,
        left: 250,
        right: 0,
        child: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Color.fromARGB(255, 33, 82, 243),
          onPressed: _changeImage,
          child: Icon(
            Icons.arrow_forward,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      );
    } else {
      return SizedBox();
    }
  }

  Widget _buildGetStartedButton() {
    if (_currentPageIndex == _images.length - 1) {
      return Positioned(
        bottom: 20.0,
        left: 0,
        right: 0,
        child: GestureDetector(
          onTap: _navigateToLogin,
          child: Container(
            padding: const EdgeInsets.all(18),
            margin: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              color: Color.fromARGB(209, 9, 48, 178),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      return SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _images.length,
            onPageChanged: (index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Image.asset(
                _images[index],
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              );
            },
          ),
          _buildArrowButton(),
          _buildGetStartedButton(),
        ],
      ),
    );
  }
}
