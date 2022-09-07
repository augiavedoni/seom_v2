import 'package:auto_route/annotations.dart';

import '../home/home_screen.dart';
import '../sign_in/sign_in_screen.dart';

@MaterialAutoRouter(
  preferRelativeImports: true,
  routes: <AutoRoute>[
    AutoRoute(page: SignInScreen, initial: true),
    AutoRoute(page: HomeScreen),
  ],
)
class $Router {}
