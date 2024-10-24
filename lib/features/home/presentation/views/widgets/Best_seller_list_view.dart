import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/best_seller_books_cubit/best_seller_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/Best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if (state is BestSellerBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is BestSellerBooksFailure) {
          return CustomErrorWidget(errorMessage: state.error);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
