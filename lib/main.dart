import 'package:e_library/main_screen/homePage.dart';
import 'package:e_library/main_screen/settings.dart';
import 'package:e_library/tabs.dart';
import 'package:flutter/material.dart';
import 'main_screen/SplashScreen.dart';
import 'user_screens/login.dart';
import 'user_screens/signInPage.dart';
import 'main_screen/settings.dart';
import 'infoScreens/book_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
    );
  }
}
