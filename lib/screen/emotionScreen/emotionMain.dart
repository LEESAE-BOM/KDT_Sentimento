import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../../theme.dart';
import 'package:KDT_SENTIMENTO/screen/emotionScreen/emotionCard.dart';
import 'package:KDT_SENTIMENTO/screen/emotionScreen/emotionlearn.dart';
import 'package:KDT_SENTIMENTO/screen/emotionScreen/expresslearn.dart';

class EmotionScreen extends StatelessWidget {
  const EmotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: (Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(9.0),
                  child: EmotionFirst(),
                ),
                Padding(
                  padding: EdgeInsets.all(9.0),
                  child: EmotionSecond(),
                ),
                Padding(
                  padding: EdgeInsets.all(9.0),
                  child: EmotionCard(),
                ),
              ])),
        ));
  }
}

class EmotionFirst extends StatelessWidget {
  const EmotionFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: kPink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            minimumSize: const Size(300, 100)
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => emotionLearn()));
        },
        child: Text(
          '감정 학습',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        )
    );
  }
}

class EmotionSecond extends StatelessWidget {
  const EmotionSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: kPink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            minimumSize: const Size(300, 100)
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => expressLearn()));
        },
        child: Text(
          '표현 학습',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        )
    );
  }
}

class EmotionCard extends StatelessWidget {
  const EmotionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: kPink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            minimumSize: const Size(300, 100)
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => EmotionCardScreen()));
        },
        child: Text(
          '단어 카드',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        )
    );
  }
}
