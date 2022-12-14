import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:seom_v2/application/auth/auth_bloc.dart';
import 'package:seom_v2/injection.dart';

import '../routes/router.gr.dart' as app_router;

import 'theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  final RootStackRouter appRouter = app_router.Router();

  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider>[
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.authCheckedRequested(),
            ),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: AutoRouterDelegate(appRouter),
        routeInformationParser: appRouter.defaultRouteParser(),
        theme: SeomTheme.light(context),
        title: "SEOM",
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('es', 'AR'),
        ],
      ),
    );
  }
}
