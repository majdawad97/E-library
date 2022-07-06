import 'package:e_library/data/books_data.dart';
import 'package:e_library/infoScreens/book_info.dart';
import 'package:e_library/models/book_model.dart';
import 'package:e_library/widget/book_preview_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class DesignScreen extends StatefulWidget {
  const DesignScreen({Key? key}) : super(key: key);

  @override
  _DesignScreenState createState() => _DesignScreenState();
}

class _DesignScreenState extends State<DesignScreen> {
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
            Image.asset('images/dont make me think.jpeg'),
            Image.asset('images/thinking with type.jpeg'),
            Image.asset('images/product design.jpeg'),
            Image.asset('images/logo design love.png'),
            Image.asset('images/the_design_of_everyday_things.jpg'),
            Image.asset('images/Interaction_of_color.jpg'),
          ],
        ),
      ),
    );
  }
}
