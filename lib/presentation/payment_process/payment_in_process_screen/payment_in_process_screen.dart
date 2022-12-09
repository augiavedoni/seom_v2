import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seom_v2/presentation/core/theme/app_colors.dart';

class PaymentInProcessScreen extends StatelessWidget {
  const PaymentInProcessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(
              NavigationToolbar.kMiddleSpacing,
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Column(
                    children: [
                      const Spacer(),
                      FractionallySizedBox(
                        widthFactor: 0.75,
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: SvgPicture.asset(
                            'lib/presentation/core/assets/payment.svg',
                          ),
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      Text(
                        'Estamos procesando tu pago',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: NavigationToolbar.kMiddleSpacing,
                        ),
                        child: Text(
                          'Esta operación puede demorar unos segundos, te pedimos que seas paciente',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      const SizedBox(height: 20),
                      LinearProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(green),
                        backgroundColor: Colors.white,
                      ),
                      const Spacer(flex: 2),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
