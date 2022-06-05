import 'package:acm_arts/domain/core/api_constants.dart';
import 'package:dio/dio.dart';

final Dio dio = Dio();

class ArtsService {
  Future<Map<String, dynamic>?> getArt(int number) async {
    final n = number.toString();
    final Map responseMap;

    try {
      Response response = await dio.get('$API_URL$n?fields=id,title,image_id');

      responseMap = response.data['data'];

      if (response.statusCode == 200) {
        return responseMap as Map<String, dynamic>;
      }
    } catch (error) {
      print('não existe arte com esta numeração $error');
    }
    return null;
  }

  Future<List<dynamic>> searchArts(String value) async {
    List<dynamic> resultList = [];

    try {
      final Response response = await dio.get(
        '${API_URL}search?q=$value&fields=id,title,image_id,artist_display&limit=100',
      );
      resultList = response.data['data'] as List<dynamic>;
    } catch (error) {
      print('algo deu errado na pesquisa');
    }
    return resultList;
  }
}
