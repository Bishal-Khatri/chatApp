import 'package:chatapp/remote/api_constants.dart';
import 'package:dio/dio.dart';

class ApiClient {
  Dio get dio => _getDio();

  Dio _getDio() {
    final options = BaseOptions(
        contentType: 'application/json',
        receiveDataWhenStatusError: true,
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: 60000,
        receiveTimeout: 30000,
        responseType: ResponseType.json
    );
    final dynamic dio = Dio(options);
    dio.interceptors.addAll(<Interceptor>[
      // AuthorizationInterceptor(),
      // LoggerInterceptor()
    ]);
    return dio;
  }
}
