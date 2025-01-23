import 'package:dio/dio.dart';

class HandleDioError {
  final String dioError; 

  HandleDioError(this.dioError);

 static String handleDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return 'Connection timeout. Please check your internet connection.';
      case DioExceptionType.sendTimeout:
        return 'Request timeout. Unable to send the request.';
      case DioExceptionType.receiveTimeout:
        return 'Response timeout. Unable to receive data.';
      case DioExceptionType.badResponse:
        return 'Server error: ${dioError.response?.statusCode} - ${dioError.response?.statusMessage}';
      case DioExceptionType.cancel:
        return 'Request was cancelled.';
      case DioExceptionType.unknown:
      default:
        return 'An unexpected error occurred. Please try again.';
    }
  }
}