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
                      Center(
                        child: Text(
                          "Categories",
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
          body: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
            child: Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 80.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.cyan,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Design',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextButton(
                  onPressed: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 80.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.cyan,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Finction',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextButton(
                  onPressed: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 80.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.cyan,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Science Fiction',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextButton(
                  onPressed: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 80.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.cyan,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Astrology',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextButton(
                  onPressed: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 80.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.cyan,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Stories',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
