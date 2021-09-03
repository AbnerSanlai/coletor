// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProdutoStore on _ProdutoStoreBase, Store {
  final _$codiBarrProdControllerAtom =
      Atom(name: '_ProdutoStoreBase.codiBarrProdController');

  @override
  TextEditingController get codiBarrProdController {
    _$codiBarrProdControllerAtom.reportRead();
    return super.codiBarrProdController;
  }

  @override
  set codiBarrProdController(TextEditingController value) {
    _$codiBarrProdControllerAtom
        .reportWrite(value, super.codiBarrProdController, () {
      super.codiBarrProdController = value;
    });
  }

  final _$descriProdControllerAtom =
      Atom(name: '_ProdutoStoreBase.descriProdController');

  @override
  TextEditingController get descriProdController {
    _$descriProdControllerAtom.reportRead();
    return super.descriProdController;
  }

  @override
  set descriProdController(TextEditingController value) {
    _$descriProdControllerAtom.reportWrite(value, super.descriProdController,
        () {
      super.descriProdController = value;
    });
  }

  final _$valorminProdControllerAtom =
      Atom(name: '_ProdutoStoreBase.valorminProdController');

  @override
  TextEditingController get valorminProdController {
    _$valorminProdControllerAtom.reportRead();
    return super.valorminProdController;
  }

  @override
  set valorminProdController(TextEditingController value) {
    _$valorminProdControllerAtom
        .reportWrite(value, super.valorminProdController, () {
      super.valorminProdController = value;
    });
  }

  final _$valorMaxProdControllerAtom =
      Atom(name: '_ProdutoStoreBase.valorMaxProdController');

  @override
  TextEditingController get valorMaxProdController {
    _$valorMaxProdControllerAtom.reportRead();
    return super.valorMaxProdController;
  }

  @override
  set valorMaxProdController(TextEditingController value) {
    _$valorMaxProdControllerAtom
        .reportWrite(value, super.valorMaxProdController, () {
      super.valorMaxProdController = value;
    });
  }

  final _$unidMedProdControllerAtom =
      Atom(name: '_ProdutoStoreBase.unidMedProdController');

  @override
  TextEditingController get unidMedProdController {
    _$unidMedProdControllerAtom.reportRead();
    return super.unidMedProdController;
  }

  @override
  set unidMedProdController(TextEditingController value) {
    _$unidMedProdControllerAtom.reportWrite(value, super.unidMedProdController,
        () {
      super.unidMedProdController = value;
    });
  }

  final _$qtdePackProdControllerAtom =
      Atom(name: '_ProdutoStoreBase.qtdePackProdController');

  @override
  TextEditingController get qtdePackProdController {
    _$qtdePackProdControllerAtom.reportRead();
    return super.qtdePackProdController;
  }

  @override
  set qtdePackProdController(TextEditingController value) {
    _$qtdePackProdControllerAtom
        .reportWrite(value, super.qtdePackProdController, () {
      super.qtdePackProdController = value;
    });
  }

  final _$codNcmProdControllerAtom =
      Atom(name: '_ProdutoStoreBase.codNcmProdController');

  @override
  TextEditingController get codNcmProdController {
    _$codNcmProdControllerAtom.reportRead();
    return super.codNcmProdController;
  }

  @override
  set codNcmProdController(TextEditingController value) {
    _$codNcmProdControllerAtom.reportWrite(value, super.codNcmProdController,
        () {
      super.codNcmProdController = value;
    });
  }

  final _$descNcmAtom = Atom(name: '_ProdutoStoreBase.descNcm');

  @override
  String get descNcm {
    _$descNcmAtom.reportRead();
    return super.descNcm;
  }

  @override
  set descNcm(String value) {
    _$descNcmAtom.reportWrite(value, super.descNcm, () {
      super.descNcm = value;
    });
  }

  final _$fotoProdutoAtom = Atom(name: '_ProdutoStoreBase.fotoProduto');

  @override
  String get fotoProduto {
    _$fotoProdutoAtom.reportRead();
    return super.fotoProduto;
  }

  @override
  set fotoProduto(String value) {
    _$fotoProdutoAtom.reportWrite(value, super.fotoProduto, () {
      super.fotoProduto = value;
    });
  }

  final _$codigobarraAtom = Atom(name: '_ProdutoStoreBase.codigobarra');

  @override
  String get codigobarra {
    _$codigobarraAtom.reportRead();
    return super.codigobarra;
  }

  @override
  set codigobarra(String value) {
    _$codigobarraAtom.reportWrite(value, super.codigobarra, () {
      super.codigobarra = value;
    });
  }

  final _$readQRCodeAsyncAction = AsyncAction('_ProdutoStoreBase.readQRCode');

  @override
  Future<void> readQRCode(BuildContext buildContext) {
    return _$readQRCodeAsyncAction.run(() => super.readQRCode(buildContext));
  }

  @override
  String toString() {
    return '''
codiBarrProdController: ${codiBarrProdController},
descriProdController: ${descriProdController},
valorminProdController: ${valorminProdController},
valorMaxProdController: ${valorMaxProdController},
unidMedProdController: ${unidMedProdController},
qtdePackProdController: ${qtdePackProdController},
codNcmProdController: ${codNcmProdController},
descNcm: ${descNcm},
fotoProduto: ${fotoProduto},
codigobarra: ${codigobarra}
    ''';
  }
}
