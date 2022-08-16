import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../application/auth/sign_up_form/sign_up_form_bloc.dart';
import '../../../domain/auth/auth_failure.dart';
import '../../common_widgets/custom_dialog.dart';
import '../../core/theme/app_colors.dart';
import '../../routes/router.gr.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _isSignUpShowing = false;
  bool _isLoading = false;
  bool _needsValidation = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return BlocConsumer<SignUpFormBloc, SignUpFormState>(
      listener: (context, state) {
        // state.authFailureOrSuccessOption.fold(
        //   () => null,
        //   (either) => either.fold(
        //     (failure) => _showFailureDialog(context, failure),
        //     (_) {
        //       context.router.replace(const NotesOverviewScreenRoute());

        //       context
        //           .read<AuthBloc>()
        //           .add(const AuthEvent.authCheckedRequested());
        //     },
        //   ),
        // );
      },
      builder: (context, state) {
        return Positioned(
          bottom: 0,
          child: AnimatedContainer(
            width: size.width,
            height: _isSignUpShowing ? size.height * 0.8 : size.height * 0.1,
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
            ),
            decoration: const BoxDecoration(
              color: green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.0025,
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        _isSignUpShowing = !_isSignUpShowing;
                      }),
                      child: Icon(
                        _isSignUpShowing
                            ? Icons.keyboard_arrow_down_rounded
                            : Icons.keyboard_arrow_up_rounded,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.0025,
                    ),
                    Text(
                      "Crear cuenta",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(
                      height: size.height * 0.075,
                    ),
                    Text(
                      "¡El proceso de registro es rápido y sencillo!",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: black,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Form(
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
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
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
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusColor: Colors.white,
                            ),
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: black,
                                    ),
                            cursorColor: yellow,
                            autocorrect: false,
                            enableSuggestions: true,
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (emailAddress) =>
                                BlocProvider.of<SignUpFormBloc>(context).add(
                              SignUpFormEvent.emailChanged(emailAddress),
                            ),
                            validator: (_) =>
                                BlocProvider.of<SignUpFormBloc>(context)
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
                              labelText: "Contraseña",
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
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
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusColor: Colors.white,
                            ),
                            style:
                                Theme.of(context).textTheme.bodyText2!.copyWith(
                                      color: black,
                                    ),
                            cursorColor: yellow,
                            autocorrect: false,
                            obscureText: true,
                            onChanged: (password) =>
                                BlocProvider.of<SignUpFormBloc>(context).add(
                              SignUpFormEvent.passwordChanged(password),
                            ),
                            validator: (_) =>
                                BlocProvider.of<SignUpFormBloc>(context)
                                    .state
                                    .password
                                    .value
                                    .fold(
                                      (failure) => failure.maybeMap(
                                        emptyPassword: (_) =>
                                            "La contraseña no puede estar vacía",
                                        shortPassword: (_) =>
                                            "La contraseña es muy corta",
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Al apretar el botón "Crear cuenta" estás aceptando los Términos y Condiciones del SEOM',
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () =>
                                _validateInformationAndCreateAccount(context),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Crear cuenta",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6!
                                      .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                ElevatedButton(
                                  onPressed: () =>
                                      _validateInformationAndCreateAccount(
                                          context),
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    shape: MaterialStateProperty.all(
                                      const CircleBorder(),
                                    ),
                                    padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(15),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                    overlayColor: MaterialStateProperty
                                        .resolveWith<Color?>((states) {
                                      if (states
                                          .contains(MaterialState.pressed)) {
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
                                      : const Icon(
                                          Icons.chevron_right_rounded,
                                          color: black,
                                        ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              backgroundColor: Colors.white,
                              fixedSize: Size(
                                size.width * 0.25,
                                size.height * 0.06,
                              ),
                            ),
                            onPressed: () => setState(() {
                              _isSignUpShowing = false;
                            }),
                            child: Text(
                              "Volver",
                              style:
                                  Theme.of(context).textTheme.button!.copyWith(
                                        color: black,
                                        fontWeight: FontWeight.bold,
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _showFailureDialog(
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

  void _validateInformationAndCreateAccount(BuildContext context) {
    final bool isEmailValid =
        BlocProvider.of<SignUpFormBloc>(context).state.emailAddress.isValid();
    final bool isPasswordValid =
        BlocProvider.of<SignUpFormBloc>(context).state.password.isValid();
    _needsValidation = true;

    if (isEmailValid && isPasswordValid) {
      setState(() {
        _isLoading = true;
      });

      BlocProvider.of<SignUpFormBloc>(context).add(
        const SignUpFormEvent.registerWithEmailAndPasswordPressed(),
      );
    }
  }
}
