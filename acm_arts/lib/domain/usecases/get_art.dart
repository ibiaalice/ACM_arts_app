import 'dart:math';

import 'package:acm_arts/domain/entities/art.dart';
import 'package:acm_arts/domain/services/arts_service.dart';

class GetArt {
  final ArtsService _artsService = ArtsService();
  final _random = Random();

  Future<Art?> byId(int value) async {
    final result = await _artsService.getArt(value);

    if (result != null) {
      final Art art = Art.fromMap(result);

      return art;
    }

    return null;
  }

  Future<Art?> random() async {
    Art? art;
    final result = await _artsService.getArt(next(2, 100000));

    if (result != null) {
      art = Art.fromMap(result);

      return art;
    }

    return art;
  }

  int next(int min, int max) => min + _random.nextInt(max - min);
}
