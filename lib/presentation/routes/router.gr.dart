// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../feedback/feedback_screen.dart' as _i3;
import '../home/home_screen.dart' as _i2;
import '../sign_in/sign_in_screen.dart' as _i1;

class Router extends _i4.RootStackRouter {
  Router([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SignInScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SignInScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    FeedbackScreenRoute.name: (routeData) {
      final args = routeData.argsAs<FeedbackScreenRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.FeedbackScreen(
          key: args.key,
          mainImagePath: args.mainImagePath,
          title: args.title,
          description: args.description,
          willPop: args.willPop,
          onWillPop: args.onWillPop,
          primaryButton: args.primaryButton,
          secondaryButton: args.secondaryButton,
          showClose: args.showClose,
          onClose: args.onClose,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          SignInScreenRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          HomeScreenRoute.name,
          path: '/home-screen',
        ),
        _i4.RouteConfig(
          FeedbackScreenRoute.name,
          path: '/feedback-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SignInScreen]
class SignInScreenRoute extends _i4.PageRouteInfo<void> {
  const SignInScreenRoute()
      : super(
          SignInScreenRoute.name,
          path: '/',
        );

  static const String name = 'SignInScreenRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreenRoute extends _i4.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/home-screen',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i3.FeedbackScreen]
class FeedbackScreenRoute extends _i4.PageRouteInfo<FeedbackScreenRouteArgs> {
  FeedbackScreenRoute({
    _i5.Key? key,
    required String mainImagePath,
    required String title,
    String? description,
    bool willPop = true,
    void Function()? onWillPop,
    required _i3.FeedbackButton primaryButton,
    _i3.FeedbackButton? secondaryButton,
    bool showClose = false,
    void Function()? onClose,
  }) : super(
          FeedbackScreenRoute.name,
          path: '/feedback-screen',
          args: FeedbackScreenRouteArgs(
            key: key,
            mainImagePath: mainImagePath,
            title: title,
            description: description,
            willPop: willPop,
            onWillPop: onWillPop,
            primaryButton: primaryButton,
            secondaryButton: secondaryButton,
            showClose: showClose,
            onClose: onClose,
          ),
        );

  static const String name = 'FeedbackScreenRoute';
}

class FeedbackScreenRouteArgs {
  const FeedbackScreenRouteArgs({
    this.key,
    required this.mainImagePath,
    required this.title,
    this.description,
    this.willPop = true,
    this.onWillPop,
    required this.primaryButton,
    this.secondaryButton,
    this.showClose = false,
    this.onClose,
  });

  final _i5.Key? key;

  final String mainImagePath;

  final String title;

  final String? description;

  final bool willPop;

  final void Function()? onWillPop;

  final _i3.FeedbackButton primaryButton;

  final _i3.FeedbackButton? secondaryButton;

  final bool showClose;

  final void Function()? onClose;

  @override
  String toString() {
    return 'FeedbackScreenRouteArgs{key: $key, mainImagePath: $mainImagePath, title: $title, description: $description, willPop: $willPop, onWillPop: $onWillPop, primaryButton: $primaryButton, secondaryButton: $secondaryButton, showClose: $showClose, onClose: $onClose}';
  }
}
