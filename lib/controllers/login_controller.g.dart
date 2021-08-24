// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on LoginControllerBase, Store {
  Computed<bool>? _$emailvalidComputed;

  @override
  bool get emailvalid =>
      (_$emailvalidComputed ??= Computed<bool>(() => super.emailvalid,
              name: 'LoginControllerBase.emailvalid'))
          .value;
  Computed<bool>? _$passwordvalidComputed;

  @override
  bool get passwordvalid =>
      (_$passwordvalidComputed ??= Computed<bool>(() => super.passwordvalid,
              name: 'LoginControllerBase.passwordvalid'))
          .value;
  Computed<bool>? _$validFormComputed;

  @override
  bool get validForm =>
      (_$validFormComputed ??= Computed<bool>(() => super.validForm,
              name: 'LoginControllerBase.validForm'))
          .value;

  final _$emailAtom = Atom(name: 'LoginControllerBase.email');

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

  final _$passwordAtom = Atom(name: 'LoginControllerBase.password');

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

  final _$loginAcceptAtom = Atom(name: 'LoginControllerBase.loginAccept');

  @override
  bool get loginAccept {
    _$loginAcceptAtom.reportRead();
    return super.loginAccept;
  }

  @override
  set loginAccept(bool value) {
    _$loginAcceptAtom.reportWrite(value, super.loginAccept, () {
      super.loginAccept = value;
    });
  }

  final _$LoginControllerBaseActionController =
      ActionController(name: 'LoginControllerBase');

  @override
  void setEmail(String value) {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction(
        name: 'LoginControllerBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction(
        name: 'LoginControllerBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validationCredentials() {
    final _$actionInfo = _$LoginControllerBaseActionController.startAction(
        name: 'LoginControllerBase.validationCredentials');
    try {
      return super.validationCredentials();
    } finally {
      _$LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
loginAccept: ${loginAccept},
emailvalid: ${emailvalid},
passwordvalid: ${passwordvalid},
validForm: ${validForm}
    ''';
  }
}
