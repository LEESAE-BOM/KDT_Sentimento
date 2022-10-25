import 'package:KDT_SENTIMENTO/theme.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function() selectHandler;
  final String answerText;

  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child : ElevatedButton(
        onPressed: selectHandler,
        child: Text(answerText,style:textTheme().bodyText1
            ?.copyWith(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold)),
        style: ElevatedButton.styleFrom(primary: Colors.white),
      ),
    );
  }
}