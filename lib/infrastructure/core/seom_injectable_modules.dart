import 'package:injectable/injectable.dart';

import '../datasource/user_data_source.dart';
import 'http/seom_client.dart';

@module
abstract class SeomInjectableModules {
  @lazySingleton
  SeomClient get seomClient => SeomClient();

  @lazySingleton
  UserDataSource get dataSource => UserDataSource.init();
}
