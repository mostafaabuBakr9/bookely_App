import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFFFDD4F),
          size: 15,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          '4.8',
          style: Styles.googletextStyle16medium,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          '(2390)',
          style: Styles.googletextStyle14regular,
        )
      ],
    );
  }
}
