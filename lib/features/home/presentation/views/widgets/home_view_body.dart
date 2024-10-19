import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/future_Books_list_view.dart';
import 'package:flutter/material.dart';

import 'Best_seller_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomeAppBar(),
              const FutureBooksListView(),
              Text(
                'Best Seller',
                style: Styles.googletextStyle18semiBold,
              ),
            ],
          ),
        ),
      ),
      const SliverFillRemaining(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: BestSellerListView(),
        ),
      )
    ]);
  }
}
