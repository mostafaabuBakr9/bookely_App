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
        const SliverToBoxAdapter(
          child: CustomAppBarHomeView(),
        ),
        const SliverToBoxAdapter(
          child: FutureBooksListView(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        SliverToBoxAdapter(
          child: Text(
            'Best Seller',
            style: Styles.googletextStyle18semiBold,
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
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
