import 'package:auto_route/annotations.dart';
import 'package:seom_v2/presentation/add_payment_method/add_payment_method_screen.dart';
import 'package:seom_v2/presentation/feedback/feedback_screen.dart';
import 'package:seom_v2/presentation/home/home_screen.dart';
import 'package:seom_v2/presentation/payment_methods_management/payment_methods_management_screen.dart';
import 'package:seom_v2/presentation/payment_process/parking_details_screen/parking_details_screen.dart';
import 'package:seom_v2/presentation/payment_process/payment_method_chooser_screen/payment_method_chooser_screen.dart';
import 'package:seom_v2/presentation/sign_in/sign_in_screen.dart';

@MaterialAutoRouter(
  preferRelativeImports: false,
  routes: <AutoRoute>[
    AutoRoute(page: SignInScreen, initial: true),
    AutoRoute(page: HomeScreen),
    AutoRoute(page: FeedbackScreen),
    AutoRoute(page: PaymentMethodsManagementScreen),
    AutoRoute<bool>(page: AddPaymentMethodScreen),
    AutoRoute(page: ParkingDetailsScreen),
    AutoRoute(page: PaymentMethodChooserScreen),
  ],
)
class $Router {}
