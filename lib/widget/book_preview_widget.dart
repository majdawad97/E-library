import 'package:e_library/infoScreens/book_info.dart';
import 'package:e_library/models/book_model.dart';
import 'package:flutter/material.dart';

class BookPreviewWidget extends StatelessWidget {
  final Book book;

  const BookPreviewWidget({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 400,
        width: 150,
        color: Colors.white,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookScreen(
                      book: book,
                    ),
                  ),
                );
              },
              child: Center(
                child: Image.asset(
                  book.image,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width - 20,
                  height: (MediaQuery.of(context).size.width - 20) * 60 / 100,
                ),
              ),
            ),
            Text(book.title),
          ],
        ),
      ),
    );
  }
}
