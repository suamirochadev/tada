import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tada/controller/list_controller.dart';

import 'package:tada/widgets/custom_icon_button.dart';
import 'package:tada/widgets/custom_text_field.dart';

import 'login_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final ListController controller = ListController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/img_screen_todo.png',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            'Tarefas',
                            style: TextStyle(
                                fontFamily: 'Pacifico',
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 32),
                          ),
                          IconButton(
                            icon: const Icon(Icons.exit_to_app),
                            color: Colors.white,
                            iconSize: 38,
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (_) => const LoginScreen()));
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Card(
                      color: const Color.fromRGBO(39, 142, 141, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: <Widget>[
                            Observer(builder: (_) {
                              return CustomTextField(
                                controller: controller.addTodoTextController,
                                hint: 'Adicionar Nova Tarefa',
                                onChanged: controller.setNovoTituloTodo,
                                suffix: CustomIconButton(
                                  radius: 32,
                                  iconData: Icons.add,
                                  onTap: controller.addTodoAoPressionar,
                                ),
                              );
                            }),
                            const SizedBox(
                              height: 8,
                            ),
                            Expanded(
                              child: Observer(builder: (_) {
                                return ListView.builder(
                                  itemCount: controller.todoList.length,
                                  itemBuilder: (_, index) {
                                    final todo = controller.todoList[index];
                                    return Card(
                                        margin:
                                            const EdgeInsets.only(bottom: 14),
                                        elevation: 2,
                                        color: Colors.teal.shade50,
                                        borderOnForeground: true,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        child: Observer(builder: (_) {
                                          return ListTile(
                                            leading: Image.asset(
                                                'assets/pin_todo.png'),
                                            title: Text(
                                              todo.titulo,
                                              style: TextStyle(
                                                color: todo.concluido ? Colors.grey : Colors.black,
                                                decoration: todo.concluido ? TextDecoration.lineThrough : null,
                                              ),
                                            ),
                                            trailing: Icon(
                                              todo.concluido
                                                  ? Icons.check_circle
                                                  : Icons.circle_outlined ,
                                              color:const Color.fromARGB(
                                                  255, 255, 138, 101),
                                            ),
                                            onTap: controller.todoList[index]
                                                .toggleConcluido,
                                          );
                                        }));
                                  },
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
