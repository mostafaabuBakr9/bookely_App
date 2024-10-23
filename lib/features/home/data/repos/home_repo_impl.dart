import 'package:bookly/core/Errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks()async {
try {
  var data =  await  apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
              List<BookModel> books = [];
              for (var item in data['items']) {
                books.add(BookModel.fromJson(item));
              }

              return right(books);
}  catch (e) {
  if (e is DioException) {
    return  left(
      ServerFailure.fromDioError(e)
    );
  }else{
    return left(
      ServerFailure.fromResponse(statusCode, response)
    );
  }
}
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {}
}
'volumes?Filtering=free-ebooks&q=subject:Programming'