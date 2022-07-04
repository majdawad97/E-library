// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Book Review',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'images/all-this-time.jpg',
                        height: 200,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          'Rodney Stone',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Text(
                              'by',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Text(
                              'Arthur Conan',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 60.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Rating : ',
                              style: TextStyle(fontSize: 20.0),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 60.0),
                          child: Text(
                            '8/10',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'Book Description',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'fdjkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkde3aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaakkkkkkkkkkkkkkkkkkkk',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                    height: 45.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.cyan,
                    child: Center(
                        child: Text(
                      'Buy Book',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
