import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:logger/logger.dart';
import 'package:workmate_app/helpers/api_helpers/global_config.dart';

class CustomHttp {
  static final Dio _dio = Dio();
  var logger = Logger();

  static setInterceptor(String token) async {
    _dio.interceptors.add(
        DioCacheManager(CacheConfig(baseUrl: GlobalData.BASE_URL)).interceptor);
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          return handler.next(options);
        },
        onResponse: (response, handler) async {
          // Do something with response data
          return handler.next(response);
        },
        onError: (DioError e, handler) async {
          // return _dio.resolve(e.response);
          return handler.resolve(e.response!);
        },
      ),
    );
  }

  static Dio getDio() {
    return _dio;
  }
}
