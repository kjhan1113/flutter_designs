import 'package:flutter/material.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Hero(
        tag: 'hero-image',
        child: Image.asset(
          'images/angry-black.png',
          width: 200,
        ),
      ),
    ));
  }
}
