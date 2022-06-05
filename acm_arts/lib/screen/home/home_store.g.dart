// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'HomeBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$artAtom = Atom(name: 'HomeBase.art', context: context);

  @override
  Art? get art {
    _$artAtom.reportRead();
    return super.art;
  }

  @override
  set art(Art? value) {
    _$artAtom.reportWrite(value, super.art, () {
      super.art = value;
    });
  }

  late final _$art2Atom = Atom(name: 'HomeBase.art2', context: context);

  @override
  Art? get art2 {
    _$art2Atom.reportRead();
    return super.art2;
  }

  @override
  set art2(Art? value) {
    _$art2Atom.reportWrite(value, super.art2, () {
      super.art2 = value;
    });
  }

  late final _$art3Atom = Atom(name: 'HomeBase.art3', context: context);

  @override
  Art? get art3 {
    _$art3Atom.reportRead();
    return super.art3;
  }

  @override
  set art3(Art? value) {
    _$art3Atom.reportWrite(value, super.art3, () {
      super.art3 = value;
    });
  }

  late final _$artsAtom = Atom(name: 'HomeBase.arts', context: context);

  @override
  List<Art>? get arts {
    _$artsAtom.reportRead();
    return super.arts;
  }

  @override
  set arts(List<Art>? value) {
    _$artsAtom.reportWrite(value, super.arts, () {
      super.arts = value;
    });
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
art: ${art},
art2: ${art2},
art3: ${art3},
arts: ${arts}
    ''';
  }
}
