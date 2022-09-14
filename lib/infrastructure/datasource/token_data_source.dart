import '../../domain/auth/value_objects/refresh_token.dart';
import '../../domain/auth/value_objects/token.dart';

class TokenDataSource {
  static TokenDataSource? instance;
  Token? token;
  RefreshToken? refreshToken;

  TokenDataSource._();

  factory TokenDataSource.init() {
    if (instance != null) return instance!;

    instance = TokenDataSource._();

    return instance!;
  }

  void clearData() {
    token = null;
    refreshToken = null;
  }
}
