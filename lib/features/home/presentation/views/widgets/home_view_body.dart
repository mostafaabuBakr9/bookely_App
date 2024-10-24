import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar_home_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/future_Books_list_view.dart';
import 'package:flutter/material.dart';

import 'Best_seller_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBarHomeView(),
                const FutureBooksListView(),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Best Seller',
                  style: Styles.googletextStyle18semiBold,
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: BestSellerListView(),
          ),
        ),
      ]),
    );
  }
}
