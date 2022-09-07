import '../../domain/auth/seom_user.dart';

class UserDataSource {
  static UserDataSource? instance;
  SeomUser? user;

  UserDataSource._();

  factory UserDataSource.init() {
    if (instance != null) return instance!;

    instance = UserDataSource._();

    return instance!;
  }

  void clearData() {
    user = null;
  }
}
