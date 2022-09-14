part of 'sign_up_form.dart';

class _PasswordInput extends StatefulWidget {
  const _PasswordInput({Key? key}) : super(key: key);

  @override
  State<_PasswordInput> createState() => __PasswordInputState();
}

class __PasswordInputState extends State<_PasswordInput> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.lock_rounded,
          color: Colors.white,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            !_obscurePassword
                ? Icons.visibility_rounded
                : Icons.visibility_off_rounded,
            color: Colors.white,
          ),
          onPressed: () => setState(() {
            _obscurePassword = !_obscurePassword;
          }),
        ),
        labelText: "Contraseña",
        labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: Colors.white,
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
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 2,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        focusColor: Colors.white,
      ),
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            color: Colors.white,
          ),
      cursorColor: black,
      autocorrect: false,
      obscureText: _obscurePassword,
      onChanged: (password) => BlocProvider.of<SignUpFormBloc>(context).add(
        SignUpFormEvent.passwordChanged(password),
      ),
      validator: (_) =>
          BlocProvider.of<SignUpFormBloc>(context).state.password.value.fold(
                (failure) => failure.maybeMap(
                  emptyPassword: (_) => "La contraseña no puede estar vacía",
                  shortPassword: (_) => "La contraseña es muy corta",
                  orElse: () => null,
                ),
                (_) => null,
              ),
    );
  }
}
