import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:seom_v2/presentation/core/theme/app_colors.dart';

class AddPaymentMethodButton extends StatelessWidget {
  const AddPaymentMethodButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => context.router.pop(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: black,
            width: 2,
          ),
          color: Colors.white,
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
                color: black,
              ),
              child: Center(
                child: const Icon(
                  Icons.add_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Añadir medio de pago',
              style: theme.textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
