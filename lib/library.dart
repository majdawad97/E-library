import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
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
                      size: 40,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.notifications_none,
                          color: Colors.cyan,
                          size: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.person_outlined,
                          color: Colors.cyan,
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
              crossAxisSpacing: 5, mainAxisSpacing: 10, crossAxisCount: 3),
          children: [
            Image.asset('images/the imperfection of memory.jpg'),
            Image.asset('images/Interaction_of_color.jpg'),
            Image.asset('images/Sin_Eater_by_Megan_Campisi.jpg'),
            Image.asset('images/steal_like_an_artist.jpg'),
            Image.asset('images/the_design_of_everyday_things.jpg'),
            Image.asset('images/lunar storm.jpeg'),
            Image.asset('images/all-this-time.jpg'),
            Image.asset('images/crack the code.jpeg'),
            Image.asset('images/dark world.jpg'),
            Image.asset('images/deadly keyholes.jpg'),
            Image.asset('images/educated.jpg'),
            Image.asset('images/five-feet-apart.jpg'),
            Image.asset('images/intuition.jpg'),
            Image.asset('images/lunar storm.jpeg'),
            Image.asset('images/six-of-crows.jpg'),
            Image.asset('images/tess of the road.jpg'),
            Image.asset('images/the girl in red.jpeg'),
            Image.asset('images/The Gravity of Us.jpg'),
            Image.asset('images/the hypocrite world.jpg'),
            Image.asset('images/the mind of a leader.jpg'),
            Image.asset('images/the worst.jpg'),
            Image.asset('images/The-Girl-Who-Never.jpg'),
            Image.asset('images/the-hollow-woods.jpg'),
            Image.asset('images/true love.jpg'),
          ],
        ),
      ),
    );
  }
}
