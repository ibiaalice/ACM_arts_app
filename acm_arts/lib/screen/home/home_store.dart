import 'package:acm_arts/domain/entities/art.dart';
import 'package:acm_arts/domain/usecases/get_art.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeBase with _$HomeStore;

abstract class HomeBase with Store {
  final GetArt _getArt = GetArt();

  @observable
  bool isLoading = false;

  @observable
  Art? art;

  @observable
  Art? art2;

  @observable
  Art? art3;

  @observable
  List<Art>? arts;

  Future<void> onInit() async {
    isLoading = true;
    art = await _getArt.random();
    art2 = await _getArt.random();
    art3 = await _getArt.random();

    isLoading = false;
  }

  Future<void> getArt() async {
    art = await _getArt.random();
  }
}
