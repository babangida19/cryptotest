import 'package:crypto_test/core/services/networking_service/app_exceptions.dart';
import 'package:dio/dio.dart';

abstract class NetworkService {
  Future<dynamic> getData({required url});
}

class NetworkClientImpl extends NetworkService {
  final Dio _dio = Dio();

  NetworkClientImpl() {
    _dio.options.connectTimeout = const Duration(seconds: 15000);
    _dio.options.receiveTimeout = const Duration(seconds: 9000);
    _dio.options.responseType = ResponseType.json;
  }

  @override
  Future<dynamic> getData({required url}) async {
    try {
      final response = await _dio.get(
        url,
      );

      return response.data;
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
