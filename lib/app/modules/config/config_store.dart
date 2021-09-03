import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'config_store.g.dart';

class ConfigStore = _ConfigStoreBase with _$ConfigStore;

abstract class _ConfigStoreBase with Store {
  @observable
  TextEditingController empresaController = TextEditingController();

  @observable
  TextEditingController servidorController = TextEditingController();

  @observable
  TextEditingController tokenController = TextEditingController();
}
