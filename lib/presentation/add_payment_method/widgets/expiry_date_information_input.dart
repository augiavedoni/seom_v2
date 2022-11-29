import 'package:flutter/material.dart';
import 'package:seom_v2/presentation/add_payment_method/widgets/expiry_month_input.dart';
import 'package:seom_v2/presentation/add_payment_method/widgets/expiry_year_input.dart';

class ExpiryDateInformationInput extends StatelessWidget {
  const ExpiryDateInformationInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.calendar_month_outlined,
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'Vencimiento',
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ExpiryMonthInput(),
            const ExpiryYearInput(),
          ],
        ),
      ],
    );
  }
}
