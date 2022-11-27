import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:seom_v2/application/payment_methods/payment_method_form/payment_method_form_bloc.dart';
import 'package:seom_v2/domain/payment_methods/entities/payment_method.dart'
    as payment_method;
import 'package:seom_v2/presentation/core/theme/app_colors.dart';

class CardNumberInput extends HookWidget {
  const CardNumberInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return BlocListener<PaymentMethodFormBloc, PaymentMethodFormState>(
      listenWhen: (previous, current) =>
          previous.isEditing != current.isEditing,
      listener: (context, state) {
        textEditingController.text =
            (state.paymentMethod as payment_method.Card)
                    .cardNumber
                    ?.getOrCrash() ??
                "";
      },
      child: TextFormField(
        controller: textEditingController,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.credit_card_rounded,
            color: Colors.black,
          ),
          labelText: 'Número de tarjeta',
          labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Colors.black,
              ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: green,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: green,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusColor: green,
        ),
        cursorColor: green,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
        onChanged: (value) => context.read<PaymentMethodFormBloc>().add(
              PaymentMethodFormEvent.cardNumberChanged(value),
            ),
        validator: (_) {
          final payment_method.Card? card = context
              .read<PaymentMethodFormBloc>()
              .state
              .paymentMethod as payment_method.Card;

          if (card != null) {
            return card.cardNumber?.value.fold(
              (failure) => failure.maybeMap(
                empty: (_) => 'No puede estar vacío',
                invalidCardBrand: (_) => 'El número de tarjeta es inválido',
                orElse: () => null,
              ),
              (_) => null,
            );
          } else {
            return null;
          }
        },
      ),
    );
  }
}
