import 'package:flutter/material.dart';

import '../../../../domain/auth/i_auth_facade.dart';
import '../../../../domain/core/errors.dart';
import '../../../../injection.dart';
import '../../core/theme/app_colors.dart';

class SeomUserAvatar extends StatefulWidget {
  const SeomUserAvatar({Key? key}) : super(key: key);

  @override
  State<SeomUserAvatar> createState() => _SeomUserAvatarState();
}

class _SeomUserAvatarState extends State<SeomUserAvatar> {
  late String initials;

  @override
  void initState() {
    super.initState();

    final userOption = getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    final firstName = user.firstName.getOrCrash();
    final lastName = user.lastName.getOrCrash();

    initials = "${firstName[0].toUpperCase()} ${lastName[0].toUpperCase()}";
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: green,
      radius: 25,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 22,
        child: Text(
          initials,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
