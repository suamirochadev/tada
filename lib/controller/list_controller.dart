import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:tada/models/todo.dart';

part 'list_controller.g.dart';

class ListController = ListControllerBase with _$ListController;

abstract class ListControllerBase with Store {
  final TextEditingController addTodoTextController = TextEditingController();

  @observable
  String novoTituloTodo = '';

  @action
  void setNovoTituloTodo(String v) => novoTituloTodo = v;

  @computed
  bool get formForValido => novoTituloTodo.isNotEmpty;

  @computed
  VoidCallback? get addTodoAoPressionar => formForValido ? addTodo : null;

  ObservableList<Todo> todoList = ObservableList<Todo>();

  @action
  void addTodo() {
    todoList.insert(0, Todo(novoTituloTodo));
    addTodoTextController.clear();
    novoTituloTodo = '';
  }
}
