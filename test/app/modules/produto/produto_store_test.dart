import 'package:flutter_test/flutter_test.dart';
import 'package:gs_coletor/app/modules/produto/produto_store.dart';
 
void main() {
  late ProdutoStore store;

  setUpAll(() {
    store = ProdutoStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}