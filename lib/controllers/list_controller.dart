import 'package:mobx/mobx.dart';

part 'list_controller.g.dart';

class ListController = ListControllerBase with _$ListController;

abstract class ListControllerBase with Store {
  @observable
  String newTodoTitle = '';

  @action
  void setNewTodoTitle(String value) {
    newTodoTitle = value;
  }

  @computed
  bool get isFormValid {
    return newTodoTitle.isEmpty;
  }

  //Priemeira forma de fazer - # Usando List<>
  // @observable
  // List<String> todoList = [];
  // @action
  // void addTodo() {
  //   todoList = List.from(todoList..add(newTodoTitle));
  // }

  //Segunda forma de fazer - # Usando ObservableList
  ObservableList<String> todoList = ObservableList<String>();
  @action
  void addTodo() {
    todoList.add(newTodoTitle);
  }
}
