// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_drawer_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyDrawerController on _MyDrawerControllerBase, Store {
  final _$logadoAtom = Atom(name: '_MyDrawerControllerBase.logado');

  @override
  bool get logado {
    _$logadoAtom.context.enforceReadPolicy(_$logadoAtom);
    _$logadoAtom.reportObserved();
    return super.logado;
  }

  @override
  set logado(bool value) {
    _$logadoAtom.context.conditionallyRunInAction(() {
      super.logado = value;
      _$logadoAtom.reportChanged();
    }, _$logadoAtom, name: '${_$logadoAtom.name}_set');
  }

  final _$_MyDrawerControllerBaseActionController =
      ActionController(name: '_MyDrawerControllerBase');

  @override
  void increment() {
    final _$actionInfo =
        _$_MyDrawerControllerBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_MyDrawerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'logado: ${logado.toString()}';
    return '{$string}';
  }
}
