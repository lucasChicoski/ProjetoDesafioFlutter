import 'package:desafiotelacadastro/widgets/custom_icon_button.dart';
import 'package:desafiotelacadastro/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import 'login_screen.dart';
import '../controllers/list_controller.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  ListController listController = GetIt.instance<ListController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Tarefas',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 32),
                    ),
                    IconButton(
                      icon: Icon(Icons.exit_to_app),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 16,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        //##OBSERVER
                        Observer(builder: (_) {
                          return CustomTextField(
                            hint: 'Tarefa',
                            onChanged: listController.setNewTodoTitle,
                            suffix: listController.isFormValid
                                ? null
                                : CustomIconButton(
                                    radius: 32,
                                    iconData: Icons.add,
                                    onTap: listController.addTodo,
                                  ),
                          );
                        }),
                        const SizedBox(
                          height: 8,
                        ),
                        Expanded(child: Observer(builder: (_) {
                          return ListView.separated(
                            itemCount: listController.todoList.length,
                            itemBuilder: (_, index) {
                              return ListTile(
                                title: Text(
                                  listController.todoList[index],
                                ),
                                onTap: () {},
                              );
                            },
                            separatorBuilder: (_, __) {
                              return Divider();
                            },
                          );
                        })),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
