import 'package:dio/dio.dart';

 class ApiService {
  final _baseurl = 'https://www.googleapis.com/books/v1/';
  final Dio dio = Dio();

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$_baseurl$endPoint');
    return response.data;
  }
}
