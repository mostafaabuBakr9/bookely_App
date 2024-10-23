part of 'best_seller_books_cubit.dart';

abstract class BestSellerBooksState extends Equatable {
  const BestSellerBooksState();

  @override
  List<Object> get props => [];
}

class BestSellerBooksInitial extends BestSellerBooksState {}

class BestSellerBooksLoading extends BestSellerBooksState {}

class BestSellerBooksSuccess extends BestSellerBooksState {
  final List<BookModel> books;
  const BestSellerBooksSuccess({required this.books});
}

class BestSellerBooksFailure extends BestSellerBooksState {
  final String error;
  const BestSellerBooksFailure({required this.error});
}
