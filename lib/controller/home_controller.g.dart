// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$procuradosAtom = Atom(name: '_HomeControllerBase.procurados');

  @override
  ObservableList<Procurado> get procurados {
    _$procuradosAtom.context.enforceReadPolicy(_$procuradosAtom);
    _$procuradosAtom.reportObserved();
    return super.procurados;
  }

  @override
  set procurados(ObservableList<Procurado> value) {
    _$procuradosAtom.context.conditionallyRunInAction(() {
      super.procurados = value;
      _$procuradosAtom.reportChanged();
    }, _$procuradosAtom, name: '${_$procuradosAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic fetchProcuradoList() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.fetchProcuradoList();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'procurados: ${procurados.toString()}';
    return '{$string}';
  }
}
