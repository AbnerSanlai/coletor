import 'package:flutter_modular/flutter_modular.dart';
import 'package:gs_coletor/app/modules/config/config_page.dart';

class ConfigModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ConfigPage())
  ];
}
