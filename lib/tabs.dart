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
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.store_rounded), label: 'Shop'),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorate'),
    BottomNavigationBarItem(
        icon: Icon(Icons.settings_rounded), label: 'Setting'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: bottomItime,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.black38,
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
