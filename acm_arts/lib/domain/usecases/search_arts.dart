import 'package:acm_arts/domain/entities/art.dart';
import 'package:acm_arts/domain/services/arts_service.dart';

class SearchArts {
  final ArtsService _artsService = ArtsService();

  Future<List<Art?>> call(String value) async {
    List<Art?> arts = [];

    final List resultList = await _artsService.searchArts(value);

    for (final Map<String, dynamic> result in resultList) {
      final Art art = Art.fromMap(result);
      arts.add(art);
    }
    return arts;
  }
}
