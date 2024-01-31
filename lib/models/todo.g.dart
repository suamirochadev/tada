// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Todo on TodoBase, Store {
  late final _$concluidoAtom =
      Atom(name: 'TodoBase.concluido', context: context);

  @override
  bool get concluido {
    _$concluidoAtom.reportRead();
    return super.concluido;
  }

  @override
  set concluido(bool value) {
    _$concluidoAtom.reportWrite(value, super.concluido, () {
      super.concluido = value;
    });
  }

  late final _$TodoBaseActionController =
      ActionController(name: 'TodoBase', context: context);

  @override
  void toggleConcluido() {
    final _$actionInfo = _$TodoBaseActionController.startAction(
        name: 'TodoBase.toggleConcluido');
    try {
      return super.toggleConcluido();
    } finally {
      _$TodoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
concluido: ${concluido}
    ''';
  }
}
