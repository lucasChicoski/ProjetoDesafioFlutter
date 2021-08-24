import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import './register_controller.dart';

part 'login_controller.g.dart';

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  RegisterController registerController = GetIt.I<RegisterController>();

  //Email
  @observable
  String? email;
  @action
  void setEmail(String value) {
    email = value;
  }

  //Senha
  @observable
  String? password;

  @action
  void setPassword(String value) {
    password = value;
  }

  @computed
  bool get emailvalid => email != null && email!.length >= 4;

  @computed
  bool get passwordvalid => password != null && password!.length >= 8;

  @computed
  bool get validForm => emailvalid && passwordvalid;

  @observable
  bool loginAccept = false;

  @action
  void validationCredentials() {
    if (email == registerController.email &&
        password == registerController.password) {
      print("entrou");
      loginAccept = true;
    } else {
      email = null;
      password = null;
      print("não entrou");
    }
  }
}
