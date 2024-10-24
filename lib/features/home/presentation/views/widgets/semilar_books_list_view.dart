import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/semilar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_list_view_item.dart';

class SemilarBooksListView extends StatelessWidget {
  const SemilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    var blocConsumer = BlocConsumer<SimilarBooksCubit, SimilarBooksState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.25,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CustomListViewItem(
                      imageUrl: state
                          .books[index].volumeInfo!.imageLinks!.thumbnail!),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
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
