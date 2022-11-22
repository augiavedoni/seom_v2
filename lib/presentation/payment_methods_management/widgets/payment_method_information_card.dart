import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seom_v2/application/payment_methods/payment_method_actor/payment_method_actor_bloc.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/presentation/core/theme/app_colors.dart';

class PaymentMethodInformationCard extends StatelessWidget {
  const PaymentMethodInformationCard({
    super.key,
    required this.paymentMethod,
  });

  final PaymentMethod paymentMethod;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      key: Key(_getPaymentMethodKeyValue()),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: black,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: NavigationToolbar.kMiddleSpacing,
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Center(child: _getPaymentMethodLogo()),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _getPaymentMethodTitle(theme),
                _getPaymentMethodSubtitle(theme),
              ],
            ),
          ),
          const Spacer(),
          _getPaymentMethodOptionsButton(context),
        ],
      ),
    );
  }

  String _getPaymentMethodKeyValue() => paymentMethod.map(
        creditCard: (creditCard) => creditCard.id.getOrCrash(),
        debitCard: (debitCard) => debitCard.id.getOrCrash(),
        accountBalance: (_) => 'account-balance',
      );

  Widget _getPaymentMethodLogo() => paymentMethod.map(
        creditCard: (creditCard) {
          final isVisa = creditCard.brand.getOrCrash() == "visa";
          final assetPath =
              'lib/presentation/core/assets/logos/${isVisa ? "visa" : "mastercard"}.svg';

          return SvgPicture.asset(assetPath);
        },
        debitCard: (debitCard) {
          final isVisa = debitCard.brand.getOrCrash() == "visa";
          final assetPath =
              'lib/presentation/core/assets/logos/${isVisa ? "visa" : "mastercard"}.svg';

          return SvgPicture.asset(assetPath);
        },
        accountBalance: (_) => const Icon(Icons.attach_money_rounded),
      );

  Widget _getPaymentMethodTitle(ThemeData theme) => paymentMethod.map(
        creditCard: (creditCard) => Text(
          '**** **** **** ${creditCard.lastFourDigits.getOrCrash()}',
          style: theme.textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        debitCard: (debitCard) => Text(
          '**** **** **** ${debitCard.lastFourDigits.getOrCrash()}',
          style: theme.textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        accountBalance: (accountBalance) {
          final balance = accountBalance.balance.getOrCrash();
          final hasDebt = balance < 0;

          return RichText(
            text: TextSpan(
              text: 'Saldo: ',
              style: theme.textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              children: [
                TextSpan(
                  text: '\$ $balance',
                  style: theme.textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: hasDebt ? Colors.redAccent : Colors.white,
                  ),
                ),
              ],
            ),
          );
        },
      );

  Widget _getPaymentMethodSubtitle(ThemeData theme) => paymentMethod.map(
        creditCard: (_) => Text(
          'Crédito',
          style: theme.textTheme.bodyText2!.copyWith(
            color: Colors.white,
          ),
        ),
        debitCard: (_) => Text(
          'Débito',
          style: theme.textTheme.bodyText2!.copyWith(
            color: Colors.white,
          ),
        ),
        accountBalance: (_) => const SizedBox(),
      );

  Widget _getPaymentMethodOptionsButton(BuildContext context) =>
      paymentMethod.maybeMap(
        accountBalance: (_) => const SizedBox(),
        orElse: () => IconButton(
          icon: const Icon(
            Icons.delete_outline_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            // TODO(augiavedoni): add Dialog to confirm that the user wants to delete the payment method.
            context.read<PaymentMethodActorBloc>().add(
                  PaymentMethodActorEvent.delete(paymentMethod),
                );
          },
        ),
      );
}
