import 'package:e_library/login.dart';
import 'package:e_library/shop.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int currentIndex = 0;

  List<Widget> pages = [
    HomePage(),
    Shop(),
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
