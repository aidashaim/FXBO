import 'package:dio/dio.dart';
import 'package:fxbo/models/country.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class DictRepository {
  final Dio _dio;

  DictRepository(
    this._dio,
  );

  Future<List<Country>> getCountries() async {
    Response response = await _dio.get('/rest/dict/countries').catchError((err) {
      print(err);
    });
    if (response != null) {
      final List countries = response.data;
      return countries.map((e) => Country.fromJson(e)).toList();
    }
    throw Exception('');
  }
}
