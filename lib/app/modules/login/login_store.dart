import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gs_coletor/app/model/UserModel.dart';

import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  @observable
  ObservableList<UserModel> userModel = <UserModel>[].asObservable();

  @observable
  bool ver = false;

  @action
  void setvisible() {
    ver = !ver;
  }

  @observable
  TextEditingController emailController = TextEditingController();

  @observable
  TextEditingController senhaController = TextEditingController();

  @observable
  var idToken;

  @observable
  var accessToken;

  @observable
  var user;

  @action
  bool validarEmail() {
    return (emailController.text != '') && (emailController.text.contains('@'));
  }

  @action
  Future<void> doSomething(_btnController) async {
    Timer(Duration(seconds: 3), () {
      Modular.to.pushReplacementNamed('/home');
    });
  }
}
