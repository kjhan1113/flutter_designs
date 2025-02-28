import 'package:flutter/material.dart';
import 'package:flutter_designs/layout_page/hero_widget_2.dart';

class HeroWidget1 extends StatelessWidget {
  const HeroWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero Animation Example")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HeroWidget2()),
            );
          },
          child: Hero(
            tag: "hero-image",
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'images/angry-birds.png',
                width: 100,
                height: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
