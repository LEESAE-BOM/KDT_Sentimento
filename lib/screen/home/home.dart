import 'package:KDT_SENTIMENTO/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:KDT_SENTIMENTO/screen/emotionScreen/emotionMain.dart';
import 'package:KDT_SENTIMENTO/screen/sentenceScreen/sentenceMain.dart';
import 'package:KDT_SENTIMENTO/screen/speechScreen/speechMenu.dart';
import 'package:KDT_SENTIMENTO/screen/actingScreen/actingCameraScreen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeButtons());
  }
}

class HomeButtons extends StatelessWidget {
  const HomeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // const List btnList = [
    //   EmotionLearningBtn(),
    //   ActingLearningBtn(),
    //   SentenceLearningBtn(),
    //   VoiceLearningBtn()
    // ];
    // return Scaffold(
    //     backgroundColor: Colors.white,
    //     body: (GridView.builder(
    //         itemCount: 4,
    //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //           crossAxisCount: 2,
    //           childAspectRatio: 1 / 1,
    //           mainAxisSpacing: 10, //수평 Padding
    //           crossAxisSpacing: 10, //수직 Padding
    //         ),
    //         itemBuilder: (BuildContext context, int index) {
    //           return Container(
    //             margin: const EdgeInsets.all(30),
    //             child: btnList[index],
    //           );
    //         })));

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
            Padding(
              padding: EdgeInsets.all(9.0),
              child: EmotionLearningBtn(),
            ),
            Padding(
              padding: EdgeInsets.all(9.0),
              child: ActingLearningBtn(),
            ),
            Padding(
              padding: EdgeInsets.all(9.0),
              child: SentenceLearningBtn(),
            ),
            Padding(
              padding: EdgeInsets.all(9.0),
              child: VoiceLearningBtn(),
            )
          ])),
        ));
  }
}

class EmotionLearningBtn extends StatelessWidget {
  const EmotionLearningBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ElevatedButton.styleFrom(
        primary: kYellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        minimumSize: const Size(300,100)
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => EmotionScreen())));
      },
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.mode_edit_outline_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            Text(
              '감정 학습',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}

class ActingLearningBtn extends StatelessWidget {
  const ActingLearningBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: kPink,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        minimumSize: const Size(300,100)
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => ActingCameraScreen(title: '',))));
      },
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.accessibility_new_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            Text(
              '행동 학습',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}

class SentenceLearningBtn extends StatelessWidget {
  const SentenceLearningBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: kPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        minimumSize: const Size(300,100)
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => sentenceMain())));
      },
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.menu_book,
              color: Colors.white,
              size: 30.0,
            ),
            Text(
              '문장 학습',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}

class VoiceLearningBtn extends StatelessWidget {
  const VoiceLearningBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: kGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        minimumSize: const Size(300,100)
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => speechMenu())));
      },
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Icons.star,
              color: Colors.white,
              size: 30.0,
            ),
            Text(
              '발화 학습',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
