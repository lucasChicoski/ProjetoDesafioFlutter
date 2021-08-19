import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import '../extensions/password_extension.dart';
part 'register_controller.g.dart';

class RegisterController = RegisterControllerBase with _$RegisterController;

abstract class RegisterControllerBase with Store {
  RegisterControllerBase() {
    autorun((_) {
      //print(password);
      print(repeatPassWordError);
      
    });
  }
  //---Nome
  @observable
  String? name;

  @action
  void setName(String value) {
    name = value;
  }

  @computed
  bool get nameValid => name!.length >= 3;
  String? get nameError {
    if (name == null || nameValid) {
      return null;
    } else if (name!.isEmpty) {
      return "Campo Obrigatório";
    } else {
      return "Nome válido";
    }
  }

  //Sobrenome
  @observable
  String? lastName;

  @action
  void setLastName(String value) {
    lastName = value;
  }

  @computed
  bool get lastNameValid => lastName!.length >= 1;
  String? get lastNameError {
    if (lastName == null || lastNameValid) {
      return null;
    } else if (lastName!.isEmpty) {
      return "Campo Obrigatório";
    } else {
      return "Sobrenome Válido";
    }
  }

  //Idade
  @observable
  String? age;

  @action
  void setAge(String value) {
    age = value;
  }

  @computed
  bool? get ageValid => int.parse(age!) >= 18;
  String? get ageError {
    if (age == null || ageValid!) {
      return null;
    } else if (age!.isEmpty) {
      return "Campo Obrigatório";
    } else {
      return "Idade Inválida";
    }
  }

  //Senha
  @observable
  String? password;

  @action
  void setPassword(String value) {
    password = value;
  }

  @computed
  bool? get passWordValid => password!.isPassWordValid();
  String? get passWordError {
    if (password == null || passWordValid!) {
      return null;
    } else if (password!.isEmpty) {
      return "Campo obrigatório";
    } else {
      return "Senha Inválida";
    }
  }

  //Confirmar senha
  @observable
  String? repeatPassword;

  @action
  void setRepeatPassword(String value) {
    repeatPassword = value;
  }

  @computed
  String? get repeatPassWordError {
    if (repeatPassword == null || repeatPassword == password) {
      return null;
    } else if (repeatPassword!.isEmpty) {
      return "Campo obrigatório";
    } else {
      return "As senhas não correspondem";
    }
  }
}
