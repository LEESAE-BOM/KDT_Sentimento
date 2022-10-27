import 'package:KDT_SENTIMENTO/constants.dart';
import 'package:KDT_SENTIMENTO/screen/speechScreen/speechMain.dart';
import 'package:KDT_SENTIMENTO/screen/speechScreen/speechTTS.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:flutter_tts/flutter_tts.dart";

class speechMenu extends StatelessWidget {
  const speechMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Scaffold(
        body: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: kPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        minimumSize: const Size(200,200)
                    ),
                    onPressed: (){},
                    child: Text("안녕하세요")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: kPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        minimumSize: const Size(200,200)
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => speechTTS())));
                    },
                    child: Text("감사합니다")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: kPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        minimumSize: const Size(200,200)
                    ),
                    onPressed: (){},
                    child: Text("죄송합니다")),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: kPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        minimumSize: const Size(200,200)
                    ),
                    onPressed: (){},
                    child: Text("사랑합니다.")),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: kPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    minimumSize: const Size(400,200)
                ),
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => speechMain())));
                },
                child: Text("사용자화 (수빈)")),
          ],
        ),
      ),)
    );
  }
}


