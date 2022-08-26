part of 'sign_up_form.dart';

class _CuilInput extends StatefulWidget {
  const _CuilInput({Key? key}) : super(key: key);

  @override
  State<_CuilInput> createState() => ___CuilInputState();
}

class ___CuilInputState extends State<_CuilInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.badge_rounded,
          color: black,
        ),
        labelText: "CUIL",
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
      keyboardType: TextInputType.number,
      onChanged: (cuil) => BlocProvider.of<SignUpFormBloc>(context).add(
        SignUpFormEvent.cuilChanged(cuil),
      ),
      validator: (_) =>
          BlocProvider.of<SignUpFormBloc>(context).state.cuil.value.fold(
                (failure) => failure.maybeMap(
                  invalidCuil: (_) => "El CUIL es inválido",
                  emptyCuil: (_) => "El CUIL no puede estar vacío",
                  orElse: () => null,
                ),
                (_) => null,
              ),
    );
  }
}
