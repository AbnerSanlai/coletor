import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_coletor/app/modules/login/login_store.dart';
import 'package:gs_coletor/app/widgets/custom_form_field_widget.dart';
import 'package:gs_coletor/app/widgets/loadingbutton_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  LoginStore loginStore = Modular.get();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final RoundedLoadingButtonController _btnController1 =
      RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: LayoutBuilder(
          builder: (_, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/fundo.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration:
                    BoxDecoration(color: Colors.blueGrey.withOpacity(0.3)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(200),
                              bottomRight: Radius.zero),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                            child: Container(
                              height: constraints.maxHeight * 0.5,
                              width: constraints.maxWidth,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(24, 169, 109, 0.7),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(200),
                                    bottomRight: Radius.zero),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 150,
                                    width: 270,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/image/logosenior.png'),
                                          fit: BoxFit.fitWidth),
                                    ),
                                  ),
                                  Text('Gestão',
                                      style: GoogleFonts.openSans(
                                        color: Colors.white,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Text('De',
                                      style: GoogleFonts.openSans(
                                        color: Colors.white,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Text('Supermecados',
                                      style: GoogleFonts.openSans(
                                        color: Colors.white,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomFormFieldWidget(
                        label: 'CNPJ',
                        icon: Icons.store,
                        controller: loginStore.emailController,
                        typekey: TextInputType.emailAddress,
                        obscure: false,
                        corIcon: Color.fromRGBO(24, 169, 109, 10),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomFormFieldWidget(
                        label: 'Usuário',
                        icon: Icons.email,
                        controller: loginStore.emailController,
                        typekey: TextInputType.emailAddress,
                        obscure: false,
                        corIcon: Color.fromRGBO(24, 169, 109, 10),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Observer(
                        builder: (context) => CustomFormFieldWidget(
                          label: 'Senha',
                          icon: Icons.lock,
                          controller: loginStore.senhaController,
                          typekey: TextInputType.text,
                          funcao: loginStore.setvisible,
                          obscure: loginStore.ver == true ? false : true,
                          corIcon: Color.fromRGBO(24, 169, 109, 4),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RoundedLoadingButton(
                        color: Color.fromRGBO(24, 169, 109, 0.7),
                        successColor: Colors.lightGreen,
                        controller: _btnController1,
                        onPressed: () {
                          loginStore.doSomething(_btnController1);
                        },
                        valueColor: Colors.white,
                        borderRadius: 10,
                        child: Text('Entrar',
                            style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      RoundedLoadingButton(
                        color: Color.fromRGBO(24, 169, 109, 0.7),
                        successColor: Colors.lightGreen,
                        controller: _btnController1,
                        onPressed: () {
                          Modular.to.pushReplacementNamed('/config');
                        },
                        valueColor: Colors.white,
                        borderRadius: 10,
                        child: Text('Configurar',
                            style: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        animateOnTap: false,
                      ),
                    ],
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
