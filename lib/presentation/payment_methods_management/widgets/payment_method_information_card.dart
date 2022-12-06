import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seom_v2/application/payment_methods/payment_method_actor/payment_method_actor_bloc.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart';
import 'package:seom_v2/presentation/common_widgets/custom_dialog.dart';
import 'package:seom_v2/presentation/core/theme/app_colors.dart';

class PaymentMethodInformationCard extends StatelessWidget {
  const PaymentMethodInformationCard({
    super.key,
    required this.paymentMethod,
    this.canErase = false,
  });

  final PaymentMethod paymentMethod;
  final bool canErase;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      key: Key(_getPaymentMethodKeyValue()),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: black,
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
          canErase ? _getPaymentMethodOptionsButton(context) : const SizedBox(),
        ],
      ),
    );
  }

  String _getPaymentMethodKeyValue() => paymentMethod.map(
        card: (card) => card.id.getOrCrash(),
        accountBalance: (_) => 'account-balance',
      );

  Widget _getPaymentMethodLogo() => paymentMethod.map(
        card: (card) {
          final isVisa = card.brand.getOrCrash() == "visa";
          final assetPath =
              'lib/presentation/core/assets/logos/${isVisa ? "visa" : "mastercard"}.svg';

          return SvgPicture.asset(assetPath);
        },
        accountBalance: (_) => const Icon(Icons.attach_money_rounded),
      );

  Widget _getPaymentMethodTitle(ThemeData theme) => paymentMethod.map(
        card: (card) => Text(
          '**** **** **** ${card.lastFourDigits.getOrCrash()}',
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
        card: (card) => card.type.value.fold(
          (_) => const SizedBox(),
          (cardType) => Text(
            cardType == 'credit' ? 'Crédito' : 'Débito',
            style: theme.textTheme.bodyText2!.copyWith(
              color: Colors.white,
            ),
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
          onPressed: () async {
            final paymentMethodActorBloc =
                context.read<PaymentMethodActorBloc>();

            return await showDialog(
              context: context,
              builder: (_) => BlocProvider<PaymentMethodActorBloc>.value(
                value: paymentMethodActorBloc,
                child: CustomDialog(
                  dialogStatus: DialogStatus.warning,
                  title: '¿Estás seguro que querés borrar este medio de pago?',
                  description: 'Esta acción no es reversible',
                  mainButtonText: 'Borrar',
                  mainButtonFunctionality: () =>
                      context.read<PaymentMethodActorBloc>().add(
                            PaymentMethodActorEvent.delete(paymentMethod),
                          ),
                  secondaryButtonText: 'Cancelar',
                  secondaryButtonFunctionality: () => context.router.pop(),
                ),
              ),
            );
          },
        ),
      );
}
