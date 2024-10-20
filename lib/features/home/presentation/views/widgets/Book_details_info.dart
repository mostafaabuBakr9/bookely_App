import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'Book_rating.dart';

class BookDetailsInfo extends StatelessWidget {
  const BookDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'The Jungle Book',
          style: Styles.gTSectraFineTextStyle30,
        ),
        Text(
          'Rudyard Kipling',
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
