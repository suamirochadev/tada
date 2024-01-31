import 'package:mobx/mobx.dart';

part 'todo.g.dart';

class Todo = TodoBase with _$Todo;

abstract class TodoBase with Store {
  TodoBase(this.titulo);

  final String titulo;

  @observable
  bool concluido = false;

  @action
  void toggleConcluido() => concluido = !concluido;
}
