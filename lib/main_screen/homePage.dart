import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_library/data/books_data.dart';
import 'package:e_library/infoScreens/book_info.dart';
import 'package:e_library/main_screen/category.dart';
// import 'package:e_library/conttroller/api_controller.dart';
import 'package:e_library/main_screen/favoritepage.dart';
import 'package:e_library/widget/book_preview_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:e_library/infoScreens/book_info.dart';

// import 'model/booksModel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.cyan,
                      size: 30,
                    ),
                    Center(
                      child: Text(
                        "E-Library",
                        style: TextStyle(fontSize: 20, color: Colors.cyan),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.notifications_none,
                          color: Colors.cyan,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.person_outlined,
                          size: 30,
                          color: Colors.cyan,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Books',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                          textAlign: TextAlign.left,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Favorate()),
                              );
                            },
                            child: Text('See all'))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 150,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [
                      //item1
                      Card(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              width: 80,
                              child: Image.asset(
                                'images/steal_like_an_artist.jpg',
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width - 20,
                                height:
                                    (MediaQuery.of(context).size.width - 20) *
                                        60 /
                                        100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // "$title"
                                  Text(
                                    'STEAL LIKE AN ARTIST',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Auston kleon'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                      //item2
                      Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              width: 80,
                              child: Image.asset(
                                'images/Interaction_of_color.jpg',
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width - 20,
                                height:
                                    (MediaQuery.of(context).size.width - 20) *
                                        60 /
                                        100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'INTERACTION OF COLOR',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Josef Albos'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Card(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              width: 80,
                              child: Image.asset(
                                'images/the_design_of_everyday_things.jpg',
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width - 20,
                                height:
                                    (MediaQuery.of(context).size.width - 20) *
                                        60 /
                                        100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'THE DESIGN OF EVERY\n DAY THINGS',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Don Norman'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Category',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Category(),
                                ),
                              );
                            },
                            child: Text('See all'))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(top: 5, bottom: 10),
                  child: ListView(scrollDirection: Axis.horizontal, children: <
                      Widget>[
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextButton(
                          child: Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                right: 5,
                              ),
                              child: Text(
                                'Design',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              )),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.grey,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.cyan,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              )),
                          onPressed: () {},
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextButton(
                          child: Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                right: 5,
                              ),
                              child: Text(
                                'Fiction',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              )),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.grey,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.cyan,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              )),
                          onPressed: () {},
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextButton(
                          child: Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                right: 5,
                              ),
                              child: Text(
                                'Science Fiction',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              )),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.grey,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.cyan,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              )),
                          onPressed: () {},
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextButton(
                          child: Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                right: 5,
                              ),
                              child: Text(
                                'Astrology',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              )),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.grey,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.cyan,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              )),
                          onPressed: () {},
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextButton(
                          child: Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                right: 5,
                              ),
                              child: Text(
                                'Stories',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              )),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.grey,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.cyan,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              )),
                          onPressed: () {},
                        )),
                  ]),
                ),
                Container(
                  height: 280,
                  margin: const EdgeInsets.only(top: 5, bottom: 10),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: booksData.length,
                    itemBuilder: (context, index) {
                      return BookPreviewWidget(
                        book: booksData[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
