import 'package:flutter_test/flutter_test.dart';
import 'package:gs_coletor/app/modules/config/config_store.dart';
 
void main() {
  late ConfigStore store;

  setUpAll(() {
    store = ConfigStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}