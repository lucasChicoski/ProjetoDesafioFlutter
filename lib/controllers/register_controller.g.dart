// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterController on RegisterControllerBase, Store {
  Computed<bool>? _$nameValidComputed;

  @override
  bool get nameValid =>
      (_$nameValidComputed ??= Computed<bool>(() => super.nameValid,
              name: 'RegisterControllerBase.nameValid'))
          .value;
  Computed<bool>? _$lastNameValidComputed;

  @override
  bool get lastNameValid =>
      (_$lastNameValidComputed ??= Computed<bool>(() => super.lastNameValid,
              name: 'RegisterControllerBase.lastNameValid'))
          .value;
  Computed<bool?>? _$ageValidComputed;

  @override
  bool? get ageValid =>
      (_$ageValidComputed ??= Computed<bool?>(() => super.ageValid,
              name: 'RegisterControllerBase.ageValid'))
          .value;
  Computed<bool?>? _$passWordValidComputed;

  @override
  bool? get passWordValid =>
      (_$passWordValidComputed ??= Computed<bool?>(() => super.passWordValid,
              name: 'RegisterControllerBase.passWordValid'))
          .value;
  Computed<String?>? _$repeatPassWordErrorComputed;

  @override
  String? get repeatPassWordError => (_$repeatPassWordErrorComputed ??=
          Computed<String?>(() => super.repeatPassWordError,
              name: 'RegisterControllerBase.repeatPassWordError'))
      .value;

  final _$nameAtom = Atom(name: 'RegisterControllerBase.name');

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$lastNameAtom = Atom(name: 'RegisterControllerBase.lastName');

  @override
  String? get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String? value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  final _$ageAtom = Atom(name: 'RegisterControllerBase.age');

  @override
  String? get age {
    _$ageAtom.reportRead();
    return super.age;
  }

  @override
  set age(String? value) {
    _$ageAtom.reportWrite(value, super.age, () {
      super.age = value;
    });
  }

  final _$passwordAtom = Atom(name: 'RegisterControllerBase.password');

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$repeatPasswordAtom =
      Atom(name: 'RegisterControllerBase.repeatPassword');

  @override
  String? get repeatPassword {
    _$repeatPasswordAtom.reportRead();
    return super.repeatPassword;
  }

  @override
  set repeatPassword(String? value) {
    _$repeatPasswordAtom.reportWrite(value, super.repeatPassword, () {
      super.repeatPassword = value;
    });
  }

  final _$RegisterControllerBaseActionController =
      ActionController(name: 'RegisterControllerBase');

  @override
  void setName(String value) {
    final _$actionInfo = _$RegisterControllerBaseActionController.startAction(
        name: 'RegisterControllerBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastName(String value) {
    final _$actionInfo = _$RegisterControllerBaseActionController.startAction(
        name: 'RegisterControllerBase.setLastName');
    try {
      return super.setLastName(value);
    } finally {
      _$RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAge(String value) {
    final _$actionInfo = _$RegisterControllerBaseActionController.startAction(
        name: 'RegisterControllerBase.setAge');
    try {
      return super.setAge(value);
    } finally {
      _$RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$RegisterControllerBaseActionController.startAction(
        name: 'RegisterControllerBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRepeatPassword(String value) {
    final _$actionInfo = _$RegisterControllerBaseActionController.startAction(
        name: 'RegisterControllerBase.setRepeatPassword');
    try {
      return super.setRepeatPassword(value);
    } finally {
      _$RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
lastName: ${lastName},
age: ${age},
password: ${password},
repeatPassword: ${repeatPassword},
nameValid: ${nameValid},
lastNameValid: ${lastNameValid},
ageValid: ${ageValid},
passWordValid: ${passWordValid},
repeatPassWordError: ${repeatPassWordError}
    ''';
  }
}
