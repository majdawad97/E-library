import 'package:e_library/homePage.dart';
import 'package:e_library/settings.dart';
import 'package:e_library/tabs.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'signInPage.dart';
import 'settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
