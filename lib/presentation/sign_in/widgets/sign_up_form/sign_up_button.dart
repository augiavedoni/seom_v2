part of 'sign_up_form.dart';

class _SignUpButton extends StatefulWidget {
  final Function() callback;
  final bool isLoading;

  const _SignUpButton(
    this.callback,
    this.isLoading, {
    Key? key,
  }) : super(key: key);

  @override
  State<_SignUpButton> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends State<_SignUpButton> {
  Function() get callback => widget.callback;
  bool get isLoading => widget.isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(
          const CircleBorder(),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(15),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed)) {
            return black;
          }

          return null;
        }),
      ),
      child: isLoading
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
    );
  }
}
