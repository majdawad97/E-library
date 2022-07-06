import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            flexibleSpace: Padding(
              padding: const EdgeInsets.all(20),
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
                  // Padding(
                  //   padding: const EdgeInsets.all(15.0),
                  //   child: Container(
                  //       decoration: BoxDecoration(
                  //           border: Border.all(color: Colors.black),
                  //           borderRadius: BorderRadius.circular(10)),
                  //       child: TextFormField(
                  //         decoration: InputDecoration(
                  //             hintText: 'Search',
                  //             prefixIcon: Icon(Icons.search),
                  //             suffixIcon: Icon(Icons.filter_list_sharp)),
                  //       )),
                  // ),
                ],
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Categories',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.design_services_outlined,
                                  size: 160,
                                  color: Colors.cyan,
                                ),
                                Text(
                                  'Design',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.stacked_line_chart_sharp,
                                  size: 160,
                                  color: Colors.cyan,
                                ),
                                Text(
                                  'Fiction',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
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
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.science_sharp,
                                  size: 160,
                                  color: Colors.cyan,
                                ),
                                Text(
                                  'Science Fiction',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 160,
                                  color: Colors.cyan,
                                ),
                                Text(
                                  'Astrology',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
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
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.book_outlined,
                                  size: 160,
                                  color: Colors.cyan,
                                ),
                                Text(
                                  'Stories',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
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
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
