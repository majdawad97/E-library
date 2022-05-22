import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

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
          toolbarHeight: 160,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
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
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.filter_list_sharp)),
                      )),
                ),
              ],
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              lg: 12,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  alignment: Alignment(0, 0),
                  color: Colors.purple,
                  child: Text("lg : 12"),
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  alignment: Alignment(0, 0),
                  color: Colors.green,
                  child: Text("xs : 6 \r\nmd : 3"),
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  alignment: Alignment(0, 0),
                  color: Colors.orange,
                  child: Text("xs : 6 \r\nmd : 3"),
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  alignment: Alignment(0, 0),
                  color: Colors.red,
                  child: Text("xs : 6 \r\nmd : 3"),
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  alignment: Alignment(0, 0),
                  color: Colors.blue,
                  child: Text("xs : 6 \r\nmd : 3"),
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 6,
              md: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  alignment: Alignment(0, 0),
                  color: Colors.lime,
                  child: Text("xs : 6 \r\nmd : 3"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
