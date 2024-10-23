// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeaturedBooksState> {
  FeatureBooksCubit(
    this.homeRepo,
  ) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FeaturedBooksFailure(error: failure.errMessage)),
      (books) => emit(FeaturedBooksSuccess(books:books)),
    );
  }
}
