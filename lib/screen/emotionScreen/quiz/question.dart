import 'package:flutter/material.dart';
import '../../../theme.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(30),
        child: Text(questionText,
            style: textTheme().headline1
                ?.copyWith(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,));
  }
}