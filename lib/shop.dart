import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 40,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.notifications_none,
                      color: Colors.black,
                      size: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.person_outlined,
                      size: 40,
                    )
                  ],
                )
              ],
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
