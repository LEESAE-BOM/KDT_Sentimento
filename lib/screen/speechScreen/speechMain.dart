import 'package:KDT_SENTIMENTO/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class speechMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
       child: Padding(
          padding: const EdgeInsets.all(30.0),
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
                  Text('오늘의 말하기 Stage',style: TextStyle(color: kTextColor,fontSize: 30),),
                  Text('1/5',style: TextStyle(color: kSecondaryColor,fontSize: 30),)],
              ),
              Container(
                child: Text('안녕하세요',style: TextStyle(color: kTextColor,fontSize: 60),),
              ),
              IconButton(
                  onPressed: (){},
                  iconSize: 50,
                  icon: Icon(Icons.mic_rounded,color: kPurple),
                  style: ButtonStyle()),
              Container(
                  height: MediaQuery.of(context).size.height/12,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        primary: kGreen,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text('다음으로',style: TextStyle(fontSize: 20),)
                  )
              ),
            ],
          ),
        ))
    );
  }
}
