import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final String text;
  final String routeName;

  const MyElevatedButton({
    super.key,
    required this.text,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        backgroundColor: Colors.white70,
      ),
      child: Text(text),
    );
  }
}
