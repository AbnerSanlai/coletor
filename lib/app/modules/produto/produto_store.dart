import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gs_coletor/app/constants.dart';
import 'package:gs_coletor/app/widgets/alert/custom_alert_store.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;

part 'produto_store.g.dart';

class ProdutoStore = _ProdutoStoreBase with _$ProdutoStore;

abstract class _ProdutoStoreBase with Store {
  @observable
  TextEditingController codiBarrProdController = TextEditingController();
  @observable
  TextEditingController descriProdController = TextEditingController();
  @observable
  TextEditingController valorminProdController = TextEditingController();
  @observable
  TextEditingController valorMaxProdController = TextEditingController();
  @observable
  TextEditingController unidMedProdController = TextEditingController();
  @observable
  TextEditingController qtdePackProdController = TextEditingController();
  @observable
  TextEditingController codNcmProdController = TextEditingController();
  @observable
  var descNcm = '';
  @observable
  var fotoProduto =
      'https://www.palimontes.com.br/public/base/img/produto_sem_foto.gif';

  var response;
  CustomAlertStore customAlertStore = Modular.get();
  @observable
  String codigobarra = '';
  @action
  Future<void> readQRCode(BuildContext buildContext) async {
    String code = await FlutterBarcodeScanner.scanBarcode(
      "#FFFFFF",
      "Cancelar",
      false,
      ScanMode.QR,
    );

    if (code != '-1') {
      final headers = {
        "X-Cosmos-Token": "Yf5Iby_F7xitwh6YyM11gA",
        "Content-Type": "application/json; charset=utf-8"
      };
      final urlBuscaProd = BASE_URL_PRODUTO + code + '.json';
      this.response = await http.get(Uri.parse(urlBuscaProd), headers: headers);

      if (response.statusCode == 200) {
        var json = jsonDecode(response.body);
        codiBarrProdController.text = '7894900019254';
        descriProdController.text = json["description"];
        valorMaxProdController.text = json["max_price"].toString();
        valorminProdController.text = json["min_price"].toString();
        unidMedProdController.text =
            json["gtins"][0]["commercial_unit"]["type_packaging"].toString();
        qtdePackProdController.text = json["gtins"][0]["commercial_unit"]
                ["quantity_packaging"]
            .toString();
        codNcmProdController.text = json["ncm"]["code"];
        descNcm = json["ncm"]["description"];
        fotoProduto = json["thumbnail"];
      } else {
        customAlertStore.customAlertError(
            buildContext,
            'Erro ao buscar produto' + response.statusCode,
            'Produto Não Encontrado',
            () {});
      }
    } else {
      customAlertStore.customAlertError(
          buildContext, 'Invalido', 'Código de barras invalido', () {});
    }
  }
}
