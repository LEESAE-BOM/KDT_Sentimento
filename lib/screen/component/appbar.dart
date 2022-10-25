import 'package:KDT_SENTIMENTO/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  const MainAppBar({Key? key, required this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/logo.png',
            fit: BoxFit.contain,
            height: 165,
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (c){
                return Text('설정');
              }),
            );},
          icon: Icon(Icons.settings),
          iconSize: 30,
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
