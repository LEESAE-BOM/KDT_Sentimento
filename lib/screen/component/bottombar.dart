import 'package:KDT_SENTIMENTO/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:KDT_SENTIMENTO/screen/home/events.dart';
import 'package:KDT_SENTIMENTO/screen/home/profile.dart';
import 'package:KDT_SENTIMENTO/screen/home/story.dart';
import 'package:KDT_SENTIMENTO/screen/home/home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: selectedIndex,
      selectedItemColor: kPrimaryColor,
      onTap: (i) {
        setState((){
          selectedIndex = i;
          print(i);
        });
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SizedBox(
              width: 45,
              height: 45,
              child: IconButton(
                onPressed: () {
                      (context)=> Home();
                },
                icon: Icon(Icons.home_filled),
                color: Color.fromRGBO(226, 167, 194, 1.0),)),
          label: "홈",
        ),
        BottomNavigationBarItem(
            icon: SizedBox(
                width: 45,
                height: 45,
                child: IconButton(
                  onPressed: () {
                        (context)=> Story();
                  },
                  icon: Icon(Icons.question_answer_rounded),
                  color: Color.fromRGBO(226, 167, 194, 1.0),)),
            label: "스토리"),
        BottomNavigationBarItem(
            icon: SizedBox(
                width: 45,
                height: 45,
                child: IconButton(
                  onPressed: () {
                        (context)=> Event_page();
                  },
                  icon: Icon(Icons.star),
                  color: Color.fromRGBO(226, 167, 194, 1.0),)),
            label: "이벤트"),
        BottomNavigationBarItem(
          icon: SizedBox(
              width: 45,
              height: 45,
              child: IconButton(
                onPressed: () {
                      (context)=> Profile();
                },
                icon: Icon(Icons.account_circle),
                color: Color.fromRGBO(226, 167, 194, 1.0),)),
          label: "프로필",),
      ],
    );
  }
}
