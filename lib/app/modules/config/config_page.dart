import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gs_coletor/app/modules/config/config_store.dart';
import 'package:gs_coletor/app/widgets/custom_form_field_widget.dart';
import 'package:gs_coletor/app/widgets/loadingbutton_widget.dart';

class ConfigPage extends StatefulWidget {
  final String title;
  const ConfigPage({Key? key, this.title = 'ConfigPage'}) : super(key: key);
  @override
  ConfigPageState createState() => ConfigPageState();
}

class ConfigPageState extends State<ConfigPage> {
  ConfigStore configStore = Modular.get();

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
                alignment: Alignment.center,
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 270,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/image/logosenior.png'),
                                fit: BoxFit.fitWidth),
                          ),
                        ),
                        Text(
                          'Configuração',
                          style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        CustomFormFieldWidget(
                          label: 'Caminho Servidor',
                          icon: Icons.store,
                          controller: configStore.servidorController,
                          typekey: TextInputType.emailAddress,
                          obscure: false,
                          corIcon: Color.fromRGBO(24, 169, 109, 10),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomFormFieldWidget(
                          label: 'CNPJ empresa',
                          icon: Icons.store,
                          controller: configStore.empresaController,
                          typekey: TextInputType.emailAddress,
                          obscure: false,
                          corIcon: Color.fromRGBO(24, 169, 109, 10),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomFormFieldWidget(
                          label: 'Token',
                          icon: Icons.store,
                          controller: configStore.tokenController,
                          typekey: TextInputType.emailAddress,
                          obscure: false,
                          corIcon: Color.fromRGBO(24, 169, 109, 10),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        RoundedLoadingButton(
                          color: Color.fromRGBO(24, 169, 109, 0.7),
                          successColor: Colors.lightGreen,
                          controller: _btnController1,
                          onPressed: () {
                            Modular.to.pushReplacementNamed('/');
                          },
                          valueColor: Colors.white,
                          borderRadius: 10,
                          child: Text('Salvar',
                              style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          animateOnTap: false,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        RoundedLoadingButton(
                          color: Color.fromRGBO(24, 169, 109, 0.7),
                          successColor: Colors.lightGreen,
                          controller: _btnController1,
                          onPressed: () {
                            Modular.to.pushReplacementNamed('/');
                          },
                          valueColor: Colors.white,
                          borderRadius: 10,
                          child: Text('Cancelar',
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
              ),
            );
          },
        ),
      ),
    );
  }
}
