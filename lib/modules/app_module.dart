import 'package:dio/dio.dart';
import 'package:fxbo/app_config.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {

  @singleton
  Configuration provideAppConfig() {
    return Configuration();
  }

  @preResolve
  @singleton
  Future<SharedPreferences> provideSharedPreferences() async {
    return await SharedPreferences.getInstance();
  }

  @singleton
  Dio provideDio(
    Configuration appConfig,
  ) {
    final headers = {
      'Authorization': 'Bearer ${appConfig.token}',
    };
    final options = {
      'version': appConfig.apiVersion,
    };
    final dio = Dio(
      BaseOptions(
        baseUrl: appConfig.baseUrl,
        headers: headers,
        queryParameters: options,
      ),
    );
    return dio;
  }
}
