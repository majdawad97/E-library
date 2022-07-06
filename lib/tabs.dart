import 'package:e_library/main_screen/category.dart';
import 'package:e_library/main_screen/favoritepage.dart';
import 'package:e_library/main_screen/settings.dart';
import 'package:flutter/material.dart';
import 'main_screen/library.dart';

import 'main_screen/homePage.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int currentIndex = 0;

  List<Widget> pages = [
    HomePage(),
    Library(),
    Category(),
    Favorites(),
    Settings(),
  ];
  List<BottomNavigationBarItem> bottomItime = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.store_rounded), label: 'Library'),
    BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category'),
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
