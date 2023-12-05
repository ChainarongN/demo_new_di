import 'dart:async';
import 'dart:io';
import 'package:demo_fuc/utils/constants.dart';

class APIService {
  APIService._internal();
  static final APIService _instance = APIService._internal();
  factory APIService() => _instance;

  Future post(String url, var body) async {
    try {
      int resStatusCode = 200;
      if (resStatusCode == 200) {}

      return Failure(
          code: Constants.USER_INVALID_RESPONSE,
          errorResponse: 'Invalid Response');
    } on TimeoutException {
      return Failure(code: Constants.TIME_OUT, errorResponse: 'Time out');
    } on HttpException {
      return Failure(code: Constants.NO_INTERNET, errorResponse: 'No Internet');
    } on FormatException {
      return Failure(
          code: Constants.INVALID_FORMAT, errorResponse: 'Invalid Format');
    } catch (e) {
      return Failure(code: Constants.UNKNOWN_ERROR, errorResponse: '$e');
    }
  }
}

class Failure {
  int code;
  Object errorResponse;
  Failure({required this.code, required this.errorResponse});
}
