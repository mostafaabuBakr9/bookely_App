import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'Book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/BookDetailsView');
      },
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        bestselleritemphoto(
          imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
        ),
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
                  bookModel.volumeInfo!.title!,
                  style: Styles.gTSectraFineTextStyle20.copyWith(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                bookModel.volumeInfo!.authors![0],
                style: Styles.googletextStyle14medium,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Free',
                  style: Styles.googletextStyle20Bold,
                ),
                const BookRating(),
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
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
            aspectRatio: 1 / 1.4,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.fill,
              errorWidget: (context, url, error) {
                return const Icon(Icons.error);
              },
            )),
      ),
    );
  }
}
