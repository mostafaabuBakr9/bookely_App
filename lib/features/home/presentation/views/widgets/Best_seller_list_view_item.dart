import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'Book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/BookDetailsView');
      },
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const bestselleritemphoto(),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.gTSectraFineTextStyle20.copyWith(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'J.K. Rowling',
                style: Styles.googletextStyle14medium,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  '19.99 €',
                  style: Styles.googletextStyle20Bold,
                ),
                BookRating(),
              ])
            ],
          ),
        )
      ]),
    );
  }
}

class bestselleritemphoto extends StatelessWidget {
  const bestselleritemphoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: AspectRatio(
        aspectRatio: 1 / 1.4,
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    image: AssetImage(Assets.testImage), fit: BoxFit.fill))),
      ),
    );
  }
}
