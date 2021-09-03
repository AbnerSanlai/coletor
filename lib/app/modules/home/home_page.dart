import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gs_coletor/app/modules/home/home_store.dart';
import 'package:gs_coletor/app/widgets/custom_drawer_widget.dart';
import 'package:gs_coletor/app/widgets/custom_stack_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supermecado cado'),
        backgroundColor: Color.fromRGBO(24, 169, 109, 0.7),
      ),
      drawer: CustomDrawerWidget(
        funcaoSair: () {
          Modular.to.pushReplacementNamed('/');
        },
        title: 'Supermercado cado',
        userMail: 'gondola@gondola.com.br',
        userName: 'Gondola',
        userPhoto: '',
      ),
      body: Observer(
        builder: (context) => LayoutBuilder(
          builder: (_, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/fundo.jpg'),
                    fit: BoxFit.cover),
              ),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(113, 113, 113, 0.7),
                    ),
                    child: Container(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        CustomStackWidget(
                          title: 'Pedido de venda',
                          icon: Icons.wallet_giftcard,
                          funcaoclick: () {},
                          localImage: 'assets/image/carrinhocompra.png',
                          width: constraints.maxWidth * 0.8,
                          quebralinha: false,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomStackWidget(
                          title: 'Coletor',
                          icon: Icons.wallet_giftcard,
                          funcaoclick: () {},
                          localImage: 'assets/image/coletor.png',
                          width: constraints.maxWidth * 0.8,
                          quebralinha: false,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomStackWidget(
                          title: 'Consultar',
                          icon: Icons.wallet_giftcard,
                          funcaoclick: () {
                            Modular.to.pushNamed('/prod');
                          },
                          localImage: 'assets/image/buscar.png',
                          width: constraints.maxWidth * 0.8,
                          quebralinha: false,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomStackWidget(
                          title: 'Preço Concorrencia',
                          icon: Icons.wallet_giftcard,
                          funcaoclick: () {},
                          localImage: 'assets/image/buscarpreco.png',
                          width: constraints.maxWidth * 0.8,
                          quebralinha: false,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomStackWidget(
                          title: 'WMS \n Movimento por Estrutura',
                          icon: Icons.wallet_giftcard,
                          funcaoclick: () {},
                          localImage: 'assets/image/wms.png',
                          width: constraints.maxWidth * 0.8,
                          quebralinha: true,
                        )
                      ],
                    )),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
