import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'Book_rating.dart';

class BookDetailsInfo extends StatelessWidget {
  const BookDetailsInfo({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(bookModel.volumeInfo!.title!,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Styles.gTSectraFineTextStyle30),
        Text(
          bookModel.volumeInfo!.authors![0],
          style: Styles.googletextStyle18medium,
        ),
        SizedBox(
          height: 5,
        ),
        BookRating(),
      ],
    );
  }
}
