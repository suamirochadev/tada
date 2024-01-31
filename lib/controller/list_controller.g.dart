// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListController on ListControllerBase, Store {
  Computed<bool>? _$formForValidoComputed;

  @override
  bool get formForValido =>
      (_$formForValidoComputed ??= Computed<bool>(() => super.formForValido,
              name: 'ListControllerBase.formForValido'))
          .value;
  Computed<VoidCallback?>? _$addTodoAoPressionarComputed;

  @override
  VoidCallback? get addTodoAoPressionar => (_$addTodoAoPressionarComputed ??=
          Computed<VoidCallback?>(() => super.addTodoAoPressionar,
              name: 'ListControllerBase.addTodoAoPressionar'))
      .value;

  late final _$novoTituloTodoAtom =
      Atom(name: 'ListControllerBase.novoTituloTodo', context: context);

  @override
  String get novoTituloTodo {
    _$novoTituloTodoAtom.reportRead();
    return super.novoTituloTodo;
  }

  @override
  set novoTituloTodo(String value) {
    _$novoTituloTodoAtom.reportWrite(value, super.novoTituloTodo, () {
      super.novoTituloTodo = value;
    });
  }

  late final _$ListControllerBaseActionController =
      ActionController(name: 'ListControllerBase', context: context);

  @override
  void setNovoTituloTodo(String v) {
    final _$actionInfo = _$ListControllerBaseActionController.startAction(
        name: 'ListControllerBase.setNovoTituloTodo');
    try {
      return super.setNovoTituloTodo(v);
    } finally {
      _$ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTodo() {
    final _$actionInfo = _$ListControllerBaseActionController.startAction(
        name: 'ListControllerBase.addTodo');
    try {
      return super.addTodo();
    } finally {
      _$ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
novoTituloTodo: ${novoTituloTodo},
formForValido: ${formForValido},
addTodoAoPressionar: ${addTodoAoPressionar}
    ''';
  }
}
