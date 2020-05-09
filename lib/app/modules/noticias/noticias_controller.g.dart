// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'noticias_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NoticiasController on _NoticiasControllerBase, Store {
  final _$noticiasListAtom = Atom(name: '_NoticiasControllerBase.noticiasList');

  @override
  ObservableStream<List<NoticiasModel>> get noticiasList {
    _$noticiasListAtom.context.enforceReadPolicy(_$noticiasListAtom);
    _$noticiasListAtom.reportObserved();
    return super.noticiasList;
  }

  @override
  set noticiasList(ObservableStream<List<NoticiasModel>> value) {
    _$noticiasListAtom.context.conditionallyRunInAction(() {
      super.noticiasList = value;
      _$noticiasListAtom.reportChanged();
    }, _$noticiasListAtom, name: '${_$noticiasListAtom.name}_set');
  }

  final _$_NoticiasControllerBaseActionController =
      ActionController(name: '_NoticiasControllerBase');

  @override
  dynamic getNoticias() {
    final _$actionInfo =
        _$_NoticiasControllerBaseActionController.startAction();
    try {
      return super.getNoticias();
    } finally {
      _$_NoticiasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'noticiasList: ${noticiasList.toString()}';
    return '{$string}';
  }
}
