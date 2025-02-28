import 'package:flutter/material.dart';

class HeroWidget2 extends StatelessWidget {
  const HeroWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero Widget 2")),
      body: Center(
        child: Hero(
          tag: "hero-image",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "images/angry-birds.png",
              width: 300,
              height: 300,
            ),
          ),
        ),
      ),
    );
  }
}
