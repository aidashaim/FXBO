import 'package:dio/dio.dart';
import 'package:fxbo/models/bl/account_info.dart';
import 'package:fxbo/models/bl/message.dart';
import 'package:fxbo/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class MessagesRepository {
  final Dio _dio;
  final UserRepository _userRepository;

  MessagesRepository(
    this._dio,
    this._userRepository,
  );

  Future<List<Message>> getMessages() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      Message(
        date: DateTime.now().add(Duration(minutes: 10)),
        title: "FXBO",
        text: "weww g weg3454 g egw eggw gewge ",
      ),
      Message(
        date: DateTime.now().add(Duration(hours: 4)),
        title: "FXBO",
        text: "weww g wegg e 54gw eggw gewge ",
      ),
      Message(
        date: DateTime.now().add(Duration(days: 3)),
        title: "FXBO",
        text: "weww g wegg22 44 egw eggw gewge ",
      ),
    ];
  }

  Future<void> createAccount() async {
    print(_userRepository.getId());

    Response response = await _dio.post('/rest/accounts/new', data: {}).catchError((err) {
      print(err);
    });
    if (response != null) {
      //return LoginResponse.fromJson(response.data);
    }
    throw Exception('Invalid login/password');
  }
}
