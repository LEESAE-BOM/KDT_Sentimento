import 'package:KDT_SENTIMENTO/screen/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

import '../../constants.dart';

class sentenceMain extends StatelessWidget {
  const sentenceMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon:Icon(Icons.close_rounded,size: 35,)),
                  Text('1/10',style: TextStyle(color: kSecondaryColor,fontSize: 30),)],
              ),
              Row(children: [
                Text('빈칸을 채워 주세요',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: kTextColor,
                  ),
                ),
              ],),
              Text('예시 문장입니다.예시 문장입니다.예시 문장입니다.예시 문장입니다.예시 문장입니다.___________예시 문장입니다.예시 문장입니다.',
                style: TextStyle(
                  fontSize: 20,
                  color: kSecondaryColor,
                ),
              ),
              Container(
                height: (MediaQuery.of(context).size.height)/2,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Row(
                    children: [Text('예시 질문입니다.',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: kTextColor,
                      ),
                    ),],
                  ),
                    Row(children: [answerCorrect()],),
                    Row(children: [answerCorrect()],),
                    Row(children: [answerWrong()],),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}

class answerCorrect extends StatelessWidget {
  const answerCorrect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: OutlinedButton(
        onPressed: (){
          showModalBottomSheet(
              context: context,
              builder: (_){
                return modalCorrect(); //정답창
              });
        },
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 30),
          primary: kTextColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text('정답예시 문장입니다. 정답예시 문장입니다.',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: kTextColor,
          ),)
    ));
  }
}
class answerWrong extends StatelessWidget {
  const answerWrong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: OutlinedButton(
        onPressed: (){
          showModalBottomSheet(
              context: context,
              builder: (_){
                return modalWrong(); //오답창
              });
        },
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 30),
          primary: kTextColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Text('오답예시 문장입니다. 오답예시 문장입니다.',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: kTextColor,
          ),))
    );
  }
}


class modalCorrect extends StatelessWidget {
  const modalCorrect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(225, 239, 216, 1.0),
      height: 300,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(Icons.check_circle_outline_rounded,size: 35),
                SizedBox(width: 20,),
                Text('정답입니다!',
                    style: TextStyle(
                        fontSize: 35,
                        color: kTextColor,
                        fontWeight: FontWeight.w700))
              ],
            ),
            Text('예시 설명입니다. 예시 설명입니다. 예시 설명입니다. 예시 설명입니다.',
                style: TextStyle(fontSize: 20, color: kSecondaryColor)),
            Row(
              children: [
                Expanded(
                    child:ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            primary: kGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            minimumSize: const Size(150, 50)
                        ),
                        child: Text('다음으로')))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class modalWrong extends StatelessWidget {
  const modalWrong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(250, 228, 213, 1.0),
      height: 300,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(Icons.cancel_outlined,size: 35),
                SizedBox(width: 20,),
                Text('틀렸습니다!',
                    style: TextStyle(
                        fontSize: 35,
                        color: kTextColor,
                        fontWeight: FontWeight.w700))
              ],
            ),
            Text('예시 설명입니다. 예시 설명입니다. 예시 설명입니다. 예시 설명입니다.',
                style: TextStyle(fontSize: 20, color: kSecondaryColor)),
            Row(
              children: [
                Expanded(
                    child:ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(243, 176, 130, 1.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            minimumSize: const Size(150, 50)
                        ),
                        child: Text('다음으로')))
              ],
            )
          ],
        ),
      ),
    );
  }
}

