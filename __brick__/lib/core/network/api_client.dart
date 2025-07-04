import 'package:dio/dio.dart';

import '../../config/config.dart';
import '../exception/app_exception.dart';

class ApiClient {
  final Dio dio;

  ApiClient()
    : dio = Dio(
        BaseOptions(
          baseUrl: AppConfig.apiBaseUrl,
          connectTimeout: Duration(milliseconds: 5000),
          receiveTimeout: Duration(milliseconds: 3000),
        ),
      ) {
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: false,
        responseBody: true,
        error: true,
        logPrint: (obj) => print('🧾 $obj'),
      ),
    );
  }

  Future<Response<Map<String, dynamic>>> get(
    String path, {
    Map<String, dynamic>? query,
  }) async {
    try {
      final fullUri = Uri.parse(
        dio.options.baseUrl,
      ).resolveUri(Uri(path: path, queryParameters: query));
      print('📡 GET 요청: $fullUri');

      // 제네릭으로 Map<String, dynamic>을 명시
      return await dio.get<Map<String, dynamic>>(path, queryParameters: query);
    } on DioException catch (e) {
      print('🔴 GET 요청 실패: ${e.message}');
      rethrow;
    }
  }

  Future<Response> post(String path, {dynamic data}) async {
    try {
      return await dio.post(path, data: data);
    } on DioException catch (e) {
      print(e.toString());
      throw AppException(
        'POST 요청 실패: ${e.message}',
        code: e.response?.statusCode,
      );
    }
  }

  Future<Response> put(String path, {dynamic data}) async {
    try {
      return await dio.put(path, data: data);
    } on DioException catch (e) {
      print(e.toString());
      throw AppException('PUT 요청 실패: ${e.message}');
    }
  }

  Future<Response> delete(String path) async {
    try {
      return await dio.delete(path);
    } on DioException catch (e) {
      print(e.toString());
      throw AppException('DELETE 요청 실패: ${e.message}');
    }
  }
}
