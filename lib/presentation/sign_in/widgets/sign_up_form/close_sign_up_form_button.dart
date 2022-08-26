part of 'sign_up_form.dart';

class _CloseSignUpFormButton extends StatelessWidget {
  final Function() callback;

  const _CloseSignUpFormButton(
    this.callback, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return OutlinedButton(
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
      onPressed: callback,
      child: Text(
        "Volver",
        style: Theme.of(context).textTheme.button!.copyWith(
              color: black,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
