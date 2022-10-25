import 'package:KDT_SENTIMENTO/screen/component/appbar.dart';
import 'package:KDT_SENTIMENTO/screen/component/calendar.dart';
import 'package:KDT_SENTIMENTO/screen/component/drawer.dart';
import 'package:KDT_SENTIMENTO/screen/component/todo.dart';
import 'package:KDT_SENTIMENTO/screen/component/todo_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:KDT_SENTIMENTO/theme.dart';
import 'package:KDT_SENTIMENTO/constants.dart';

class Event_page extends StatefulWidget {
  const Event_page({Key? key}) : super(key: key);
  @override
  State<Event_page> createState() => _Event_page();
}


class _Event_page extends State<Event_page> {
  DateTime selectedDay = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  DateTime focusedDay = DateTime.now();
  var podo = 0;
  var image_path ='assets/image/podo_complete.png';
        @override
  Widget build(BuildContext context) {
          switch (podo){
            case 0:
              image_path ='assets/image/podo0.png';
              break;
            case 1:
              image_path ='assets/image/podo1.png';
              break;
            case 2:
              image_path ='assets/image/podo2.png';
              break;
            case 3:
              image_path ='assets/image/podo3.png';
              break;
            case 4:
              image_path ='assets/image/podo4.png';
              break;
            case 5:
              image_path ='assets/image/podo5.png';
          }
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text('Level 1',style: textTheme().headline2?.copyWith(
                  color: kSecondaryColor, fontWeight: FontWeight.bold,fontSize: 25
              ),),
              SizedBox(height: 20,),
              Image(image: AssetImage(image_path),height: 200,),
              SizedBox(height: 20,),
              Calendar(
                selectedDay: selectedDay,
                focusedDay: focusedDay,
                onDaySelected: onDaySelected,
              ),
              SizedBox(height: 8.0),
              Todo(
                selectedDay: selectedDay,
                scheduleCount: 3,
              ),
              SizedBox(height: 8.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TodoCard(startTime: 14, endTime:15, content: '딥러닝 감정학습', color: Colors.red),
              ),
              SizedBox(height: 8.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TodoCard(startTime: 17, endTime:18, content: '감정 퀴즈', color: Colors.red),
              ),
              SizedBox(height: 8.0,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TodoCard(startTime: 20, endTime:21, content: '복습', color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onDaySelected(DateTime selectedDay, DateTime focusedDay){
    setState(() {
      this.selectedDay = selectedDay;
      this.focusedDay = selectedDay;
    });
  }
}
