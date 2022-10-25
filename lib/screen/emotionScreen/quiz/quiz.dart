import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';
import 'image.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({required this.questions,required this.answerQuestion,required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:Column(
      children: <Widget>[
        Question(questions[questionIndex%3]['questionText'] as String),
        Quiz_image(questions[questionIndex%3]['imagePath'] as String),
        SizedBox(height: 10,),
        ...(questions[questionIndex%3]['answers' ] as List<Map<String,Object>>).map((answer){
          return Answer(
                  () => answerQuestion(answer['score'])
              ,answer['text'] as String);
        }).toList()
      ],
      )
    );
  }
}