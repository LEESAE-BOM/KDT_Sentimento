import 'package:flutter/material.dart';

class Quiz_image extends StatelessWidget {
  final String imagePath;

  Quiz_image(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 220,
        width: 250,
        child: Image.asset(imagePath)
    );
  }
}