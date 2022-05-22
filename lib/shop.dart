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
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 2),
          children: [
            Container(
              child:
                  Image(image: AssetImage('images/Interaction_of_color.jpg')),
            ),
            Container(
              child:
                  Image(image: AssetImage('images/steal_like_an_artist.jpg')),
            ),
            Container(
              child: Image(
                  image:
                      AssetImage('images/the_design_of_everyday_things.jpg')),
            ),
            Container(
              child: Image(
                  image: AssetImage('images/Sin_Eater_by_Megan_Campisi.jpg')),
            ),
            Container(
              child: Image(
                  image: AssetImage('images/the imperfection of memory.jpg')),
            ),
            Container(
              child: Image(image: AssetImage('')),
            ),
            Container(
              child: Image(image: AssetImage('')),
            ),
            Container(
              child: Image(image: AssetImage('')),
            ),
            Container(
              child: Image(image: AssetImage('')),
            ),
            Container(
              child: Image(image: AssetImage('')),
            ),
            Container(
              child: Image(image: AssetImage('')),
            ),
            Container(
              child: Image(image: AssetImage('')),
            ),
            Container(
              child: Image(image: AssetImage('')),
            ),
            Container(
              child: Image(image: AssetImage('')),
            ),
            Container(
              child: Image(image: AssetImage('')),
            ),
            Container(
              child: Image(image: AssetImage('')),
            ),
            Container(
              child: Image(image: AssetImage('')),
            ),
            Container(
              child: Image(image: AssetImage('')),
            ),
          ],
        ),
      ),
    );
  }
}
