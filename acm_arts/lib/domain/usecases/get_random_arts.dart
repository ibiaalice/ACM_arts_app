import 'package:acm_arts/domain/entities/art.dart';
import 'dart:math';
import 'package:acm_arts/domain/usecases/get_art.dart';

class GetRandomArts {
  final GetArt _getArt = GetArt();
  final _random = Random();

  Future<List<Art>> call() async {
    List<Art> arts = [];
    int counter = 0;

    while (counter < 15) {
      final art = await _getArt.byId(next(10, 1000));
      if (art == null) continue;
      arts.add(art);
      counter += 1;
      print(counter);
    }

    return arts;
  }

  int next(int min, int max) => min + _random.nextInt(max - min);
}
