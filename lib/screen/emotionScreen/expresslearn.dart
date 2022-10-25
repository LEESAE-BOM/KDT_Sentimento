import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './quiz/quiz.dart';
import './quiz/result.dart';
//행동학습
class expressLearn extends StatefulWidget {
  expressLearn({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _expressLearn createState() => _expressLearn();
}

class _expressLearn extends State<expressLearn> {
  final _questions = const [
    {
      'questionText': '사진 속 인물의 표정을 보고, 인물이 느끼는 감정을 선택하세요.',
      'imagePath':'assets/image/1.jpg',
      'answers': [{'text':'기쁨','score':10}, {'text':'불안','score':7},
        {'text':'당황','score':7},{'text':'분노','score':7},
        {'text':'슬픔','score':5}, {'text':'상처','score':3}]
    },
    {
      'questionText': '사진 속 인물의 표정을 보고, 인물이 느끼는 감정을 선택하세요.',
      'imagePath':'assets/image/2.jpg',
      'answers': [{'text':'기쁨','score':10}, {'text':'불안','score':7},
        {'text':'당황','score':7},{'text':'분노','score':7},
        {'text':'슬픔','score':5}, {'text':'상처','score':3}]
    },
    {
      'questionText': '사진 속 인물의 표정을 보고, 인물이 느끼는 감정을 선택하세요.',
      'imagePath':'assets/image/3.jpg',
      'answers': [{'text':'기쁨','score':10}, {'text':'불안','score':7},
        {'text':'당황','score':7},{'text':'분노','score':7},
        {'text':'슬픔','score':5}, {'text':'상처','score':3}]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
          body: _questionIndex < _questions.length
              ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions)
              : Result(_totalScore)
      );
  }
}
