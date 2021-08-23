import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

//Extensões
import '../extensions/password_extension.dart';
import '../extensions/email_extension.dart';
import '../extensions/age_extension.dart';

//Screens
import '../screens/login_screen.dart';

//New Class
part 'register_controller.g.dart';

class RegisterController = RegisterControllerBase with _$RegisterController;

abstract class RegisterControllerBase with Store {

  LoginScreen loginScreen = GetIt.I<LoginScreen>();

  RegisterControllerBase() {
    autorun((_) {
      print(ageError);
    });
  }

  //------Show password-----
  @observable
  bool passwordVisibilty = true;

  @action
  void passwordVisibiltyFunc() {
    passwordVisibilty = !passwordVisibilty;
  }

  //---Nome
  @observable
  String? name;

  @action
  void setName(String value) {
    name = value;
  }

  @computed
  bool get nameValid => name != null && name!.length >= 3;
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
  bool get lastNameValid => lastName != null && lastName!.length >= 1;
  String? get lastNameError {
    if (lastName == null || lastNameValid) {
      return null;
    } else if (lastName!.isEmpty) {
      return "Campo Obrigatório";
    } else {
      return "Sobrenome Válido";
    }
  }

  //Email
  @observable
  String? email;

  @action
  void setEmail(String value) {
    email = value;
  }

  @computed
  bool get emailValid => email != null && email!.isEmailValid();
  String? get emailError {
    if (email == null || emailValid) {
      return null;
    } else if (email!.isEmpty) {
      return "Campo obrigatório";
    } else {
      return "Email inválido";
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
  bool get ageValid => age != null && age!.isAgeValid();
  String? get ageError {
    if (age == null || ageValid) {
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
  bool? get passWordValid => password != null && password!.isPassWordValid();
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
  bool? get repeatPassWordValid =>
      repeatPassword != null && repeatPassword!.isPassWordValid();
  bool? get validMatchPassWord => repeatPassWordValid! && passWordValid!
      ? repeatPassword == password
      : false;
  String? get repeatPassWordError {
    if (repeatPassword == null || validMatchPassWord!) {
      return null;
    } else if (repeatPassword!.isEmpty) {
      return "Campo obrigatório";
    } else {
      return "As senhas não correspondem";
    }
  }

  // Parte do botão

  @observable
  bool isLoading = false;

  @action
  void setIsLoading(bool value) {
    isLoading = value;
  }

  @computed
  bool get validForm {
    return validMatchPassWord! &&
        nameValid &&
        lastNameValid &&
        ageValid &&
        emailValid;
  }

  @action
  Future<void> signIn() async {
    setIsLoading(true);
    print("Entrou");
    await Future.delayed(
      Duration(seconds: 10),
    );
    
     

    print("Saiu");
    setIsLoading(false);
  }
}
