import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class AuthRepository {
  final Dio dio;

  AuthRepository(this.dio);

  Future<bool> login({
    @required String email,
    @required String password,
  }) async {
    final body = {
      'email': email,
      'password': password,
    };
    Response response = await dio.post('/rest/user/check_credentials', data: body).catchError(() {});
    //Response response = await dio.get('/rest/ping');
    return false;
  }
}
