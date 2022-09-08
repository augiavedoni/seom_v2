import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/auth_bloc.dart';
import '../../../../application/auth/sign_up_form/sign_up_form_bloc.dart';
import '../../../../domain/auth/auth_failure.dart';
import '../../../common_widgets/custom_dialog.dart';
import '../../../core/theme/app_colors.dart';
import '../../../routes/router.gr.dart';

part 'cuil_input.dart';
part 'email_input.dart';
part 'password_input.dart';
part 'sign_up_button.dart';
part 'close_sign_up_form_button.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _isSignUpShowing = false;
  bool _isLoading = false;
  bool _needsValidation = false;

  //TODO: terminar formulario de registro y redireccionar a pantalla de inicio

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return BlocConsumer<SignUpFormBloc, SignUpFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (failure) => _showFailureDialog(context, failure),
            (_) {
              // context.router.replace(const NotesOverviewScreenRoute());

              // context
              //     .read<AuthBloc>()
              //     .add(const AuthEvent.authCheckedRequested());
            },
          ),
        );
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
                          const _CuilInput(),
                          const SizedBox(
                            height: 10,
                          ),
                          const _EmailInput(),
                          const SizedBox(
                            height: 10,
                          ),
                          const _PasswordInput(),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
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
                                _SignUpButton(
                                  () => _validateInformationAndCreateAccount(
                                    context,
                                  ),
                                  _isLoading,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          _CloseSignUpFormButton(
                            () => setState(() {
                              _isSignUpShowing = false;
                            }),
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
    final String description = failure.maybeMap(
      cancelledByUser: (_) => "Operación cancelada por el usuario",
      emailAlreadyInUse: (_) => "El correo electrónico ya está en uso",
      cuilAlreadyInUse: (_) => "El CUIL ingresado ya está registrado",
      orElse: () => "Oops! Algó falló... ¡Volvé a intentarlo!",
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
