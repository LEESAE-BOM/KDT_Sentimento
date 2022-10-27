import 'package:KDT_SENTIMENTO/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:flutter_tts/flutter_tts.dart";

class speechTTS extends StatelessWidget {
  //speechTTS({Key? key}) : super(key: key);
  final FlutterTts tts = FlutterTts();

  speechTTS(){
    tts.setLanguage('kr');
    tts.setSpeechRate(0.9);
    tts.setPitch(1.2);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: (){
                      tts.setVolume(1);
                      tts.speak('감사합니다');
                    },
                    iconSize: MediaQuery.of(context).size.width/8,
                    icon: Icon(Icons.volume_up_sharp,size: MediaQuery.of(context).size.width/8,)),
                SizedBox(width: MediaQuery.of(context).size.width/15,),
                Text('감사합니다.',style: TextStyle(fontSize: MediaQuery.of(context).size.width/8),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: (){
                      tts.setVolume(0.7);
                      tts.speak('감사합니다');
                    },
                    iconSize: MediaQuery.of(context).size.width/10,
                    icon: Icon(Icons.volume_down_rounded,size: MediaQuery.of(context).size.width/10,)),
                SizedBox(width: MediaQuery.of(context).size.width/15,),
                Text('감사합니다.',style: TextStyle(fontSize: MediaQuery.of(context).size.width/10),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: (){
                      tts.setVolume(0.4);
                      tts.speak('감사합니다');
                    },
                    iconSize: MediaQuery.of(context).size.width/13,
                    icon: Icon(Icons.volume_mute_rounded,size: MediaQuery.of(context).size.width/13,)),
                SizedBox(width: MediaQuery.of(context).size.width/15,),
                Text('감사합니다.',style: TextStyle(fontSize: MediaQuery.of(context).size.width/13),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

