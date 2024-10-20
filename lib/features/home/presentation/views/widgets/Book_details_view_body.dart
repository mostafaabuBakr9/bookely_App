import 'package:bookly/features/home/presentation/views/widgets/Book_details_info.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_button.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar_book_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomAppBarBookDetails(),
          SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.4,
              child: CustomListViewItem()),
          SizedBox(
            height: 40,
          ),
          BookDetailsInfo(),
          SizedBox(
            height: 40,
          ),
          CustomButton(),
        ],
      ),
    );
  }
}
