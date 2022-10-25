import 'package:flutter/material.dart';
import 'screen/mainScreen.dart';
import 'screen/splashScreen/splashScreen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => SplashScreen(),
  MainScreen.routeName: (context) => MainScreen()
};
