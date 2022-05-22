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
        body: ListView(scrollDirection: Axis.vertical, children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              width: 150,
              color: Colors.white,
              child: Column(
                children: [
                  Center(
                      child: Image.asset(
                    'images/Interaction_of_color.jpg',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width - 20,
                    height: (MediaQuery.of(context).size.width - 20) * 60 / 100,
                  )),
                  Text('book title'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              width: 150,
              color: Colors.white,
              child: Column(
                children: [
                  Center(
                      child: Image.asset(
                    'images/steal_like_an_artist.jpg',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width - 20,
                    height: (MediaQuery.of(context).size.width - 20) * 60 / 100,
                  )),
                  Text('book title'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              width: 150,
              color: Colors.white,
              child: Column(
                children: [
                  Center(
                      child: Image.asset(
                    'images/the_design_of_everyday_things.jpg',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width - 20,
                    height: (MediaQuery.of(context).size.width - 20) * 60 / 100,
                  )),
                  Text('book title'),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
