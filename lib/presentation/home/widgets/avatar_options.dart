import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seom_v2/application/auth/auth_bloc.dart';
import 'package:seom_v2/presentation/core/theme/app_colors.dart';
import 'package:seom_v2/presentation/routes/router.gr.dart';

import 'avatar.dart';

class AvatarOptions extends StatelessWidget {
  const AvatarOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        right: size.width * 0.05,
      ),
      child: PopupMenuButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        offset: const Offset(
          0,
          50,
        ),
        itemBuilder: (context) => <PopupMenuEntry>[
          PopupMenuItem(
            child: _buildMenuOptionRow(
              icon: Icons.payments_rounded,
              text: "Medios de pago",
            ),
            onTap: () => context.router.push(
              const PaymentMethodsManagementScreenRoute(),
            ),
          ),
          PopupMenuItem(
            child: _buildMenuOptionRow(
              icon: Icons.settings_rounded,
              text: "Ajustes",
            ),
            onTap: () {},
            // onTap: () => context.router.push(
            //   const SettingsScreenRoute(),
            // ),
          ),
          PopupMenuItem(
            child: _buildMenuOptionRow(
              icon: Icons.exit_to_app_rounded,
              text: "Cerrar sesión",
            ),
            onTap: () => context.read<AuthBloc>().add(
                  const AuthEvent.signedOut(),
                ),
          ),
        ],
        child: const SeomUserAvatar(),
      ),
    );
  }

  Row _buildMenuOptionRow({
    required IconData icon,
    required String text,
  }) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: green,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(text),
      ],
    );
  }
}
