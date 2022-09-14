import 'package:injectable/injectable.dart';

import '../datasource/token_data_source.dart';
import '../datasource/user_data_source.dart';
import 'http/seom_client.dart';

@module
abstract class SeomInjectableModules {
  @lazySingleton
  SeomClient get seomClient => SeomClient();

  @lazySingleton
  UserDataSource get userDataSource => UserDataSource.init();

  @lazySingleton
  TokenDataSource get tokenDataSource => TokenDataSource.init();
}
