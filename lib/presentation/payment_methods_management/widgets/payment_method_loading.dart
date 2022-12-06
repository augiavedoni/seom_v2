import 'package:flutter/material.dart';
import 'package:seom_v2/presentation/core/theme/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class PaymentMethodsLoading extends StatelessWidget {
  const PaymentMethodsLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: black,
      ),
      padding: const EdgeInsets.all(10),
      child: Shimmer.fromColors(
        baseColor: black,
        highlightColor: Colors.grey[200]!,
        child: Card(
          margin: EdgeInsets.zero,
          elevation: 1.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const SizedBox(height: 50),
        ),
      ),
    );
  }
}
