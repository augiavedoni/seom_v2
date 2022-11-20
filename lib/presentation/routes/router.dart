import 'package:auto_route/annotations.dart';
import 'package:seom_v2/presentation/feedback/feedback_screen.dart';
import 'package:seom_v2/presentation/home/home_screen.dart';
import 'package:seom_v2/presentation/payment_methods_management/payment_methods_management_screen.dart';
import 'package:seom_v2/presentation/sign_in/sign_in_screen.dart';

@MaterialAutoRouter(
  preferRelativeImports: false,
  routes: <AutoRoute>[
    AutoRoute(page: SignInScreen, initial: true),
    AutoRoute(page: HomeScreen),
    AutoRoute(page: FeedbackScreen),
    AutoRoute(page: PaymentMethodsManagementScreen),
  ],
)
class $Router {}
