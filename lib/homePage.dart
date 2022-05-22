import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
                    )
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
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                      Text('See all')
                    ],
                  ),
                ),
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
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [
                    Center(
                        child: Image.asset(
                      'images/background2.jpg',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width - 20,
                      height:
                          (MediaQuery.of(context).size.width - 20) * 60 / 100,
                    )),
                    Center(
                        child: Image.asset(
                      'images/background3.jpg',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width - 20,
                      height:
                          (MediaQuery.of(context).size.width - 20) * 60 / 100,
                    )),
                    Center(
                        child: Image.asset(
                      'images/book.jpg',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width - 20,
                      height:
                          (MediaQuery.of(context).size.width - 20) * 60 / 100,
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
                        'For You',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        textAlign: TextAlign.left,
                      ),
                      Icon(Icons.filter_list),
                    ],
                  ),
                ),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(top: 5, bottom: 10),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
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
                                backgroundColor: Colors.deepPurple,
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Colors.black,
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
                                    color: Colors.black,
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
                                    color: Colors.black,
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
                                    color: Colors.black,
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
                                    color: Colors.black,
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
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
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
                                'images/background2.jpg',
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width - 20,
                                height:
                                    (MediaQuery.of(context).size.width - 20) *
                                        60 /
                                        100,
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
                                'images/background.jpg',
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width - 20,
                                height:
                                    (MediaQuery.of(context).size.width - 20) *
                                        60 /
                                        100,
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
                                'images/background3.jpg',
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width - 20,
                                height:
                                    (MediaQuery.of(context).size.width - 20) *
                                        60 /
                                        100,
                              )),
                              Text('book title'),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
