import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:fxbo/models/LoginResponse.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AuthRepository {
  final Dio dio;

  AuthRepository(
    this.dio,
  );

  Future<LoginResponse> login({
    @required String email,
    @required String password,
  }) async {
    final body = {
      'email': email,
      'password': password,
    };
    Response response = await dio.post('/rest/user/check_credentials', data: body).catchError((err) {
      print(err);
    });
    if (response != null) {
      return LoginResponse.fromJson(response.data);
    } else {
      return null;
    }
  }
}
