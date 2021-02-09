import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:fxbo/models/dto/login_response.dart';
import 'package:fxbo/models/dto/registration_repsone.dart';
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
    }
    throw Exception('Invalid login/password');
  }

  Future<RegistrationResponse> register({
    @required String firstName,
    @required String lastName,
    @required String countryCode,
    @required String phone,
    @required String email,
    @required String password,
  }) async {
    final body = {
      'firstName': firstName,
      'lastName': lastName,
      'country': countryCode,
      'phone': phone,
      'email': email,
      'password': password,
      'sendWelcomeEmail': true,
    };
    Response response = await dio.post('/rest/users/new', data: body).catchError((err) {
      print(err);
    });
    if (response != null) {
      return RegistrationResponse.fromJson(response.data);
    }
    throw Exception('');
  }
}
