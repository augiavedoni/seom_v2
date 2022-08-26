import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';

import '../../../domain/auth/auth_failure.dart';

import '../../common_widgets/custom_dialog.dart';
import '../../core/theme/app_colors.dart';
import '../../routes/router.gr.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool _needsValidation = false;
  bool _isLoading = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (failure) {
              setState(() {
                _isLoading = false;
              });

              return _showFailureDialog(context, failure);
            },
            (_) {
              setState(() {
                _isLoading = false;
              });
              // context.router.replace(const NotesOverviewScreenRoute());

              // context
              //     .read<AuthBloc>()
              //     .add(const AuthEvent.authCheckedRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: _needsValidation
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.email_rounded,
                    color: black,
                  ),
                  labelText: "Correo electrónico",
                  labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: black,
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
                  focusColor: Colors.white,
                ),
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: black,
                    ),
                cursorColor: green,
                autocorrect: false,
                enableSuggestions: true,
                keyboardType: TextInputType.emailAddress,
                onChanged: (emailAddress) =>
                    BlocProvider.of<SignInFormBloc>(context).add(
                  SignInFormEvent.emailChanged(emailAddress),
                ),
                validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (failure) => failure.maybeMap(
                        invalidEmail: (_) =>
                            "El correo electrónico es inválido",
                        emptyEmail: (_) =>
                            "El correo electrónico no puede estar vacío",
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock_rounded,
                    color: black,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      !_obscurePassword
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded,
                      color: black,
                    ),
                    onPressed: () => setState(() {
                      _obscurePassword = !_obscurePassword;
                    }),
                  ),
                  labelText: "Contraseña",
                  labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: black,
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
                  focusColor: Colors.white,
                ),
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: black,
                    ),
                cursorColor: green,
                autocorrect: false,
                obscureText: _obscurePassword,
                onChanged: (password) =>
                    BlocProvider.of<SignInFormBloc>(context).add(
                  SignInFormEvent.passwordChanged(password),
                ),
                validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                    .state
                    .password
                    .value
                    .fold(
                      (failure) => failure.maybeMap(
                        emptyPassword: (_) =>
                            "La contraseña no puede estar vacía",
                        shortPassword: (_) => "La contraseña es muy corta",
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () => _validateInformationAndSignIn(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Iniciar sesión",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    ElevatedButton(
                      onPressed: () => _validateInformationAndSignIn(context),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all(
                          const CircleBorder(),
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.all(15),
                        ),
                        backgroundColor: MaterialStateProperty.all(green),
                        overlayColor:
                            MaterialStateProperty.resolveWith<Color?>((states) {
                          if (states.contains(MaterialState.pressed)) {
                            return black;
                          }

                          return null;
                        }),
                      ),
                      child: _isLoading
                          ? const SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: black,
                              ),
                            )
                          : const Icon(Icons.chevron_right_rounded),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<dynamic> _showFailureDialog(
    BuildContext context,
    AuthFailure failure,
  ) {
    final String description = failure.map(
      cancelledByUser: (_) => "Operación cancelada por el usuario",
      serverError: (_) => "Oops! Algó falló... ¡Volvé a intentarlo!",
      emailAlreadyInUse: (_) => "El correo electrónico ya está en uso",
      invalidEmailAndPasswordCombination: (_) =>
          "La combinación de correo electrónico y contraseña es incorrecta",
    );

    setState(() {
      _isLoading = false;
    });

    return showDialog(
      context: context,
      builder: (context) {
        return CustomDialog(
          title: "Algo ocurrió...",
          description: description,
          mainButtonText: "Volver",
          mainButtonFunctionality: () => Navigator.of(context).pop(),
          dialogStatus: DialogStatus.error,
        );
      },
    );
  }

  void _validateInformationAndSignIn(BuildContext context) {
    final bool isEmailValid =
        BlocProvider.of<SignInFormBloc>(context).state.emailAddress.isValid();
    final bool isPasswordValid =
        BlocProvider.of<SignInFormBloc>(context).state.password.isValid();
    _needsValidation = true;

    if (isEmailValid && isPasswordValid) {
      setState(() {
        _isLoading = true;
      });
    }

    BlocProvider.of<SignInFormBloc>(context).add(
      const SignInFormEvent.signInWithEmailAndPasswordPressed(),
    );
  }
}
