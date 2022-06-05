import 'package:acm_arts/domain/entities/art.dart';
import 'package:acm_arts/domain/usecases/search_arts.dart';
import 'package:mobx/mobx.dart';

part 'search_store.g.dart';

class SearchStore = SearchBase with _$SearchStore;

abstract class SearchBase with Store {
  final SearchArts _searchArts = SearchArts();

  @observable
  String? search;

  @observable
  bool isLoading = false;

  List<Art?> arts = [];

  @action
  void setSearch(String value) => search = value;

  Future<void> setArts() async {
    isLoading = true;
    arts = await _searchArts(search!);
    isLoading = false;
  }

  List<String> getImagesUrl() {
    List<String> imagesUrl = [];

    for (final Art? art in arts) {
      imagesUrl.add(art!.imageId!);
    }
    return imagesUrl;
  }
}
