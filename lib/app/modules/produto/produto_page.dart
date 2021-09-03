import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gs_coletor/app/modules/produto/produto_store.dart';
import 'package:gs_coletor/app/widgets/custom_drawer_widget.dart';
import 'package:gs_coletor/app/widgets/custom_form_field_label_widget.dart';
import 'package:gs_coletor/app/widgets/custom_form_field_widget.dart';

class ProdutoPage extends StatefulWidget {
  final String title;
  const ProdutoPage({Key? key, this.title = 'ProdutoPage'}) : super(key: key);
  @override
  ProdutoPageState createState() => ProdutoPageState();
}

class ProdutoPageState extends State<ProdutoPage> {
  ProdutoStore produtoStore = Modular.get();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supermecado cado'),
        actions: [
          IconButton(
            onPressed: () {
              produtoStore.readQRCode(context);
            },
            icon: Icon(Icons.print),
            iconSize: 40,
          ),
        ],
        backgroundColor: Color.fromRGBO(24, 169, 109, 0.7),
      ),
      body: Observer(
        builder: (context) => LayoutBuilder(
          builder: (_, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 190.0,
                      height: 190.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(produtoStore.fotoProduto)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomFormFieldLabelWidget(
                      controller: produtoStore.codiBarrProdController,
                      typekey: TextInputType.text,
                      obscure: false,
                      corIcon: Color.fromRGBO(24, 169, 109, 10),
                      icon: Icons.qr_code,
                      label: 'Codigo/Barra Produto',
                      funcao: () {
                        produtoStore.readQRCode(context);
                      },
                      title: 'teste',
                      width: constraints.maxWidth * 0.93,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomFormFieldLabelWidget(
                      controller: produtoStore.descriProdController,
                      typekey: TextInputType.text,
                      obscure: false,
                      label: 'Descrição',
                      funcao: () {},
                      title: 'teste',
                      width: constraints.maxWidth * 0.93,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomFormFieldLabelWidget(
                          controller: produtoStore.valorminProdController,
                          typekey: TextInputType.number,
                          obscure: false,
                          label: 'Preço Min',
                          funcao: () {},
                          title: 'teste',
                          width: constraints.maxWidth * 0.46,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CustomFormFieldLabelWidget(
                          controller: produtoStore.valorMaxProdController,
                          typekey: TextInputType.number,
                          obscure: false,
                          label: 'Preço Max',
                          funcao: () {},
                          title: 'teste',
                          width: constraints.maxWidth * 0.45,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomFormFieldLabelWidget(
                          controller: produtoStore.unidMedProdController,
                          typekey: TextInputType.number,
                          obscure: false,
                          label: 'Unid Medida',
                          funcao: () {},
                          title: 'teste',
                          width: constraints.maxWidth * 0.5,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CustomFormFieldLabelWidget(
                          controller: produtoStore.qtdePackProdController,
                          typekey: TextInputType.number,
                          obscure: false,
                          label: 'qtde Pack',
                          funcao: () {},
                          title: 'teste',
                          width: constraints.maxWidth * 0.41,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomFormFieldLabelWidget(
                      controller: produtoStore.codNcmProdController,
                      typekey: TextInputType.text,
                      obscure: false,
                      label: 'Código NCM',
                      funcao: () {},
                      title: 'teste',
                      width: constraints.maxWidth * 0.93,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Descrição NCM',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          Text(produtoStore.descNcm)
                        ],
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      width:
                          constraints.maxWidth * 0.93, //70% da largura da tela
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Colors.black45,
                              offset: Offset(2, 2),
                            )
                          ]),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
