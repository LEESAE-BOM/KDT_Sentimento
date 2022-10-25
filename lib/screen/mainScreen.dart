import 'package:KDT_SENTIMENTO/screen/component/appbar.dart';
import 'package:KDT_SENTIMENTO/screen/component/drawer.dart';
import 'package:KDT_SENTIMENTO/screen/home/profile.dart';
import 'package:KDT_SENTIMENTO/screen/home/story.dart';
import 'package:KDT_SENTIMENTO/screen/home/events.dart';
import 'package:KDT_SENTIMENTO/main.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'component/bottombar.dart';
import 'component/calendar.dart';
import 'home/home.dart';
import 'component/appbar.dart';



class MainScreen extends StatefulWidget {
  static String routeName = "/mainScreens";
  @override
  _MainScreenState createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          drawer: MainDrawer(
          ),
          appBar: MainAppBar(appBar: AppBar()),
          body: PageView(
            children: [
              [Home(), Story(), Event_page(), Profile()][selectedIndex],
            ],
          ),
          // IndexedStack(
          //   index: _selectedIndex,
          //   children: [
          //     Home(),
          //     actingScreen(),
          //     sentScreen(),
          //   ],//새봄코드
          // ),
          bottomNavigationBar:BottomNavigationBar(
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
                        onPressed: () {},
                        icon: Icon(Icons.question_answer_rounded),
                        color: Color.fromRGBO(226, 167, 194, 1.0),)),
                  label: "스토리"),
              BottomNavigationBarItem(
                  icon: SizedBox(
                      width: 45,
                      height: 45,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.star),
                        color: Color.fromRGBO(226, 167, 194, 1.0),)),
                  label: "이벤트"),
              BottomNavigationBarItem(
                icon: SizedBox(
                    width: 45,
                    height: 45,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.account_circle),
                      color: Color.fromRGBO(226, 167, 194, 1.0),)),
                label: "프로필",),
            ],
          )
      );
  }
}