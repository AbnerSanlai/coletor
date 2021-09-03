import 'package:gs_coletor/app/modules/config/config_module.dart';
import 'package:gs_coletor/app/modules/config/config_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gs_coletor/app/modules/home/home_module.dart';
import 'package:gs_coletor/app/modules/login/login_module.dart';
import 'package:gs_coletor/app/modules/login/login_store.dart';
import 'package:gs_coletor/app/modules/produto/produto_module.dart';
import 'package:gs_coletor/app/widgets/alert/custom_alert_store.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ConfigStore()),
    Bind.lazySingleton((i) => LoginStore()),
    Bind.lazySingleton((i) => CustomAlertStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: LoginModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/config', module: ConfigModule()),
    ModuleRoute('/prod', module: ProdutoModule()),
  ];
}
