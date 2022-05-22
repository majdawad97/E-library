import 'package:e_library/login.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

class tabs extends StatefulWidget {
  const tabs({Key? key}) : super(key: key);

  @override
  _tabsState createState() => _tabsState();
}

class _tabsState extends State<tabs> {
  int currentIndex = 0;

  List<Widget> pages = [
    HomePage(),
    LoginScreen(),
  ];
  List<BottomNavigationBarItem> bottomItime = [
    BottomNavigationBarItem(icon: Icon(Icons.paste), label: '1'),
    BottomNavigationBarItem(icon: Icon(Icons.video_label), label: ' 2'),
    BottomNavigationBarItem(icon: Icon(Icons.paste), label: '3'),
    BottomNavigationBarItem(icon: Icon(Icons.paste), label: '4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: bottomItime,
        selectedItemColor: Colors.red,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      body: pages[currentIndex],
    );
  }
}
