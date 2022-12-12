import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../application/auth/sign_up_form/sign_up_form_bloc.dart';

import '../../injection.dart';

import '../core/theme/app_colors.dart';

import 'widgets/sign_in_form/sign_in_form.dart';
import 'widgets/sign_up_form/sign_up_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: lightblue,
      body: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              height: size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                    ),
                    child: Text(
                      "¡Bienvenido!",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: black,
                            fontSize: size.width * 0.1,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                    ),
                    child: BlocProvider(
                      create: (context) => getIt<SignInFormBloc>(),
                      child: const SignInForm(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BlocProvider(
            create: (context) => getIt<SignUpFormBloc>(),
            child: const SignUpForm(),
          ),
        ],
      ),
    );
  }
}
