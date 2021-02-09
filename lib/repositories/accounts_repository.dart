import 'package:dio/dio.dart';
import 'package:fxbo/models/bl/account_info.dart';
import 'package:fxbo/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AccountsRepository {
  final Dio _dio;
  final UserRepository _userRepository;

  AccountsRepository(
    this._dio,
    this._userRepository,
  );

  Future<List<AccountInfo>> getAccounts() async {
    final body = {
      "userId": _userRepository.getId(),
    };
    Response response = await _dio.post('/rest/accounts', data: body).catchError((err) {
      print(err);
    });
    if (response.statusCode == 200) {
      final accountsRaw = response.data as List;
      List<AccountInfo> accounts = [];
      for (int i = 0; i < accountsRaw.length; i++) {
        final account = AccountInfo.fromJson(accountsRaw[i]);
        accounts.add(account);
      }
      return accounts;
    } else {
      throw Exception('');
    }
  }

  Future<void> createAccount() async {
    print(_userRepository.getId());

    Response response = await _dio.post('/rest/accounts/new', data: {}).catchError((err) {
      print(err);
    });
    if (response != null) {
      //return LoginResponse.fromJson(response.data);
    }
    throw Exception('');
  }
}
