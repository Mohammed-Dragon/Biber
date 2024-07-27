import 'package:dragon_work/components/my_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Sign_Up extends StatefulWidget {
  final Function()? onTap;
  Sign_Up({super.key, required this.onTap});
  @override
  _Sign_UpState createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmPasswordFocusNode = FocusNode();

  @override
  void dispose() {
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final confirmpasController = TextEditingController();

  void signUserUp() async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    /*
    
    if (email.isEmpty || !isValidEmail(email)) {
      wrongEmail();
      return;
    }

    if (password.isEmpty || password.length < 6) {
      wrongPassword();
      return;


    }*/
    if (passwordController.text != confirmpasController.text) {
      Navigator.pop(context);
      showError("Passwords do not match");
      return;
    }
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      showError(e.code);
    }
  }

  /*
  
  
  bool isValidEmail(String email) {
    // Use a regular expression to validate email format
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);





  }*/

  void showError(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Error!'),
          content: Text(
            message,
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            'lib/assets/Login-Dark (1).png',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 260),
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 35),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: emailController,
                      focusNode: emailFocusNode,
                      onTap: () {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email, color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: emailFocusNode.hasFocus
                                ? Color.fromARGB(255, 8, 46, 76)
                                : Colors.white,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 0, 75, 136)),
                        ),
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 174, 176, 192)),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: passwordController,
                      focusNode: passwordFocusNode,
                      onTap: () {
                        setState(() {
                          FocusScope.of(context)
                              .requestFocus(passwordFocusNode);
                        });
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: passwordFocusNode.hasFocus
                                ? const Color.fromARGB(255, 1, 53, 96)
                                : Colors.white,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 0, 75, 136)),
                        ),
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 174, 176, 192)),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: confirmpasController,
                      focusNode: confirmPasswordFocusNode,
                      onTap: () {
                        setState(() {
                          FocusScope.of(context)
                              .requestFocus(confirmPasswordFocusNode);
                        });
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: confirmPasswordFocusNode.hasFocus
                                ? const Color.fromARGB(255, 1, 53, 96)
                                : Colors.white,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 0, 75, 136)),
                        ),
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 174, 176, 192)),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 30),
                  MyButton(
                    text: "Sign Up",
                    onTap: signUserUp,
                  ),
                  SizedBox(height: 18),
                  Text(
                    'Or continue with',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'lib/assets/Facebook auth.png',
                          width: 141,
                          height: 40,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'lib/assets/Google auth.png',
                          width: 141,
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an account?',
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: const Text(
                          'Login now',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 0, 11, 167),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
