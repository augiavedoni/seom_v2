import 'package:auto_route/annotations.dart';

import '../sign_in/sign_in_screen.dart';

@MaterialAutoRouter(
  preferRelativeImports: true,
  routes: <AutoRoute>[
    AutoRoute(page: SignInScreen, initial: true),
  ],
)
class $Router {}
