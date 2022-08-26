import 'package:injectable/injectable.dart';

import 'http/seom_client.dart';

@module
abstract class SeomInjectableModules {
  @lazySingleton
  SeomClient get seomClient => SeomClient();
}
