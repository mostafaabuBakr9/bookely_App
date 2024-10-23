part of 'feature_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;
  const FeaturedBooksSuccess({
    required this.books,
  });
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String error;
  const FeaturedBooksFailure({required this.error});
}
