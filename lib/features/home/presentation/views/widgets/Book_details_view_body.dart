import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/Book_details_info.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_button.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar_book_details.dart';
import 'future_Books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomAppBarBookDetails(),
            SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.4,
                child: const CustomListViewItem(
                  imageUrl: Assets.testImage,
                )),
            const SizedBox(
              height: 40,
            ),
            const BookDetailsInfo(),
            const SizedBox(
              height: 40,
            ),
            const CustomButton(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'You can also Like',
                  style: Styles.googletextStyle14semiBold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.18,
              child: const FutureBooksListView(),
            )
          ],
        ),
      )
    ]);
  }
}
