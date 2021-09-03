// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ConfigStore on _ConfigStoreBase, Store {
  final _$empresaControllerAtom =
      Atom(name: '_ConfigStoreBase.empresaController');

  @override
  TextEditingController get empresaController {
    _$empresaControllerAtom.reportRead();
    return super.empresaController;
  }

  @override
  set empresaController(TextEditingController value) {
    _$empresaControllerAtom.reportWrite(value, super.empresaController, () {
      super.empresaController = value;
    });
  }

  final _$servidorControllerAtom =
      Atom(name: '_ConfigStoreBase.servidorController');

  @override
  TextEditingController get servidorController {
    _$servidorControllerAtom.reportRead();
    return super.servidorController;
  }

  @override
  set servidorController(TextEditingController value) {
    _$servidorControllerAtom.reportWrite(value, super.servidorController, () {
      super.servidorController = value;
    });
  }

  final _$tokenControllerAtom = Atom(name: '_ConfigStoreBase.tokenController');

  @override
  TextEditingController get tokenController {
    _$tokenControllerAtom.reportRead();
    return super.tokenController;
  }

  @override
  set tokenController(TextEditingController value) {
    _$tokenControllerAtom.reportWrite(value, super.tokenController, () {
      super.tokenController = value;
    });
  }

  @override
  String toString() {
    return '''
empresaController: ${empresaController},
servidorController: ${servidorController},
tokenController: ${tokenController}
    ''';
  }
}
