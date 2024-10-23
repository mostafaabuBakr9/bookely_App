import 'dart:math';

import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/feature_books/feature_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FutureBooksListView extends StatelessWidget {
  const FutureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    var blocConsumer = BlocConsumer<FeatureBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.30,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const CustomListViewItem();
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(
            errorMessage: state.error,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
    return blocConsumer;
  }
}
