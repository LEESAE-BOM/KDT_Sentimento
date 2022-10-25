import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Text(
            '레벨',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ))
        ],

      ),
    );
  }
}
