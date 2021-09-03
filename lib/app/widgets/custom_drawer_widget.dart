import 'package:flutter/material.dart';
import 'dart:ui';

class CustomDrawerWidget extends StatelessWidget {
  final String title;
  final VoidCallback? funcaoSair;
  //final VoidCallback? funcaoMinhaConta;
  // final VoidCallback? funcaoMeusProjetos;
  final String? userMail;
  final String? userName;
  final String? userPhoto;
  const CustomDrawerWidget(
      {Key? key,
      this.title = "CustomDrawerWidget",
      this.funcaoSair,
      //this.funcaoMinhaConta,
      //  this.funcaoMeusProjetos,
      this.userMail,
      this.userName,
      this.userPhoto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/fundo.jpg'), fit: BoxFit.cover),
        ),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(24, 169, 109, 0.7),
              ),
              child: Container(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(113, 113, 113, 1),
                      ),
                      accountEmail: Text(userMail!),
                      accountName: Text(userName!),
                      currentAccountPicture: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/image/avatar.jpg')),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.person,
                            color: Colors.black.withOpacity(1),
                            size: 40,
                          ),
                          title: Text(
                            "Minha conta",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          onTap: () {
                            // Navigator.pop(context);
                            //Navegar para outra página
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.house,
                            color: Colors.black.withOpacity(1),
                            size: 40,
                          ),
                          title: Text(
                            "Meus Projetos",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          onTap: () {
                            //Navigator.pop(context);
                            //Navegar para outra página
                          },
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.logout,
                            color: Colors.black.withOpacity(1),
                            size: 40,
                          ),
                          title: Text(
                            "Sair",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          onTap: this.funcaoSair,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

/*   @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<VoidCallback?>.has(
        'funcaoMinhaConta', funcaoMinhaConta));
  } */
}
