import 'package:gs_coletor/app/modules/produto/produto_page.dart';
import 'package:gs_coletor/app/modules/produto/produto_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProdutoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProdutoStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ProdutoPage()),
  ];
}
