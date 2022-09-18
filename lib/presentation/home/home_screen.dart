import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/vehicles/vehicle_watcher/vehicle_watcher_bloc.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/core/errors.dart';
import '../../injection.dart';
import '../routes/router.gr.dart';
import 'widgets/avatar_options.dart';
import 'widgets/home_screen_overview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String firstName;

  @override
  void initState() {
    super.initState();

    final userOption = getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    firstName = user.firstName.getOrCrash();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider>[
        BlocProvider<VehicleWatcherBloc>(
          create: (context) => getIt<VehicleWatcherBloc>()
            ..add(
              const VehicleWatcherEvent.getAllStarted(),
            ),
        ),
      ],
      child: MultiBlocListener(
        listeners: <BlocListener>[
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) => state.maybeMap(
              unauthenticated: (value) => context.router.replace(
                const SignInScreenRoute(),
              ),
              orElse: () => null,
            ),
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "¡Hola, $firstName!",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            centerTitle: false,
            actions: const <Widget>[
              AvatarOptions(),
            ],
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          backgroundColor: Colors.white,
          body: const HomeScreenOverview(),
        ),
      ),
    );
  }
}
