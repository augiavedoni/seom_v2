import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/payment_methods/payment_method_watcher/payment_method_watcher_bloc.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/payment_method_loading.dart';
import 'package:seom_v2/presentation/payment_methods_management/widgets/payment_methods_list.dart';

class PaymentMethodsOverview extends StatelessWidget {
  const PaymentMethodsOverview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentMethodWatcherBloc, PaymentMethodWatcherState>(
      builder: (context, state) => state.maybeMap(
        loadInProgress: (_) => const PaymentMethodsLoading(),
        loadSuccess: (state) => PaymentMethodsList(
          paymentMethods: state.paymentMethods,
        ),
        // TODO(augiavedoni): implement loading failure handling
        /* loadFailure: (state) => print(state.paymentMethodFailure), */
        orElse: () => const SizedBox(),
      ),
    );
  }
}
