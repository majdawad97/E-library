import 'package:e_library/data/books_data.dart';
import 'package:e_library/infoScreens/book_info.dart';
import 'package:e_library/models/book_model.dart';
import 'package:e_library/widget/book_preview_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ScienceScreen extends StatefulWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  _ScienceScreenState createState() => _ScienceScreenState();
}

class _ScienceScreenState extends State<ScienceScreen> {
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
                          color: Colors.cyan,
                          size: 30,
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
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 5, mainAxisSpacing: 10, crossAxisCount: 3),
          children: [
            Image.asset('images/the gene.jpeg'),
            Image.asset('images/the man.jpeg'),
            Image.asset('images/guns.jpeg'),
            Image.asset('images/handbook.jpeg'),
            Image.asset('images/breath.png'),
          ],
        ),
      ),
    );
  }
}
