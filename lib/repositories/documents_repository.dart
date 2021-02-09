import 'package:dio/dio.dart';
import 'package:fxbo/models/bl/document_preview.dart';
import 'package:fxbo/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class DocumentsRepository {
  final Dio _dio;
  final UserRepository _userRepository;

  DocumentsRepository(
    this._dio,
    this._userRepository,
  );

  Future<DocumentPreview> getDocument(String id) async {
    Response response = await _dio.get('/rest/documents/$id',).catchError((err) {
      print(err);
    });
    if (response.statusCode == 200) {
      return DocumentPreview.fromJson(response.data);
    } else {
      throw Exception('');
    }
  }

  Future<List<DocumentPreview>> getDocuments() async {
    final body = {
      'userIds': [
        _userRepository.getId(),
      ],
    };
    Response response = await _dio.post('/rest/documents', data: body).catchError((err) {
      print(err);
    });
    if (response.statusCode == 200) {

    } else {
      throw Exception('');
    }
  }
}
