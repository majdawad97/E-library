import 'package:e_library/settings.dart';
import 'package:flutter/material.dart';
import 'library.dart';
import 'settings.dart';
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
    Library(),
    Settings(),
  ];
  List<BottomNavigationBarItem> bottomItime = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.store_rounded), label: 'Library'),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
    BottomNavigationBarItem(
        icon: Icon(Icons.settings_rounded), label: 'Settings'),
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
