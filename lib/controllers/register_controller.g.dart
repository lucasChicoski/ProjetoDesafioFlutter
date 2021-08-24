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
  Computed<bool>? _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: 'RegisterControllerBase.emailValid'))
          .value;
  Computed<bool>? _$ageValidComputed;

  @override
  bool get ageValid =>
      (_$ageValidComputed ??= Computed<bool>(() => super.ageValid,
              name: 'RegisterControllerBase.ageValid'))
          .value;
  Computed<bool?>? _$passWordValidComputed;

  @override
  bool? get passWordValid =>
      (_$passWordValidComputed ??= Computed<bool?>(() => super.passWordValid,
              name: 'RegisterControllerBase.passWordValid'))
          .value;
  Computed<bool?>? _$repeatPassWordValidComputed;

  @override
  bool? get repeatPassWordValid => (_$repeatPassWordValidComputed ??=
          Computed<bool?>(() => super.repeatPassWordValid,
              name: 'RegisterControllerBase.repeatPassWordValid'))
      .value;
  Computed<bool>? _$validFormComputed;

  @override
  bool get validForm =>
      (_$validFormComputed ??= Computed<bool>(() => super.validForm,
              name: 'RegisterControllerBase.validForm'))
          .value;

  final _$passwordVisibiltyAtom =
      Atom(name: 'RegisterControllerBase.passwordVisibilty');

  @override
  bool get passwordVisibilty {
    _$passwordVisibiltyAtom.reportRead();
    return super.passwordVisibilty;
  }

  @override
  set passwordVisibilty(bool value) {
    _$passwordVisibiltyAtom.reportWrite(value, super.passwordVisibilty, () {
      super.passwordVisibilty = value;
    });
  }

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

  final _$emailAtom = Atom(name: 'RegisterControllerBase.email');

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
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

  final _$isLoadingAtom = Atom(name: 'RegisterControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$registerDoneAtom = Atom(name: 'RegisterControllerBase.registerDone');

  @override
  bool get registerDone {
    _$registerDoneAtom.reportRead();
    return super.registerDone;
  }

  @override
  set registerDone(bool value) {
    _$registerDoneAtom.reportWrite(value, super.registerDone, () {
      super.registerDone = value;
    });
  }

  final _$signInAsyncAction = AsyncAction('RegisterControllerBase.signIn');

  @override
  Future<void> signIn() {
    return _$signInAsyncAction.run(() => super.signIn());
  }

  final _$RegisterControllerBaseActionController =
      ActionController(name: 'RegisterControllerBase');

  @override
  void passwordVisibiltyFunc() {
    final _$actionInfo = _$RegisterControllerBaseActionController.startAction(
        name: 'RegisterControllerBase.passwordVisibiltyFunc');
    try {
      return super.passwordVisibiltyFunc();
    } finally {
      _$RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

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
  void setEmail(String value) {
    final _$actionInfo = _$RegisterControllerBaseActionController.startAction(
        name: 'RegisterControllerBase.setEmail');
    try {
      return super.setEmail(value);
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
  void setIsLoading(bool value) {
    final _$actionInfo = _$RegisterControllerBaseActionController.startAction(
        name: 'RegisterControllerBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$RegisterControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
passwordVisibilty: ${passwordVisibilty},
name: ${name},
lastName: ${lastName},
email: ${email},
age: ${age},
password: ${password},
repeatPassword: ${repeatPassword},
isLoading: ${isLoading},
registerDone: ${registerDone},
nameValid: ${nameValid},
lastNameValid: ${lastNameValid},
emailValid: ${emailValid},
ageValid: ${ageValid},
passWordValid: ${passWordValid},
repeatPassWordValid: ${repeatPassWordValid},
validForm: ${validForm}
    ''';
  }
}
