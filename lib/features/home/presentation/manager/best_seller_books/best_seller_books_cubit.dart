// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import 'package:bookly/features/home/data/models/book_model/book_model.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(
    this.homeRepo,
  ) : super(BestSellerBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchbestSellerBooks() async {
    emit(BestSellerBooksLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold(
      (failure) => emit(BestSellerBooksFailure(error: failure.errMessage)),
      (books) => emit(BestSellerBooksSuccess(books: books)),
    );
  }
}
