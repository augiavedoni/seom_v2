part of 'sign_up_form.dart';

class _EmailInput extends StatefulWidget {
  const _EmailInput({Key? key}) : super(key: key);

  @override
  State<_EmailInput> createState() => __EmailInputState();
}

class __EmailInputState extends State<_EmailInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusColor: Colors.white,
      ),
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            color: black,
          ),
      cursorColor: yellow,
      autocorrect: false,
      enableSuggestions: true,
      keyboardType: TextInputType.emailAddress,
      onChanged: (emailAddress) => BlocProvider.of<SignUpFormBloc>(context).add(
        SignUpFormEvent.emailChanged(emailAddress),
      ),
      validator: (_) => BlocProvider.of<SignUpFormBloc>(context)
          .state
          .emailAddress
          .value
          .fold(
            (failure) => failure.maybeMap(
              invalidEmail: (_) => "El correo electrónico es inválido",
              emptyEmail: (_) => "El correo electrónico no puede estar vacío",
              orElse: () => null,
            ),
            (_) => null,
          ),
    );
  }
}
