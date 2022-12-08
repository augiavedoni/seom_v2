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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:kt_dart/collection.dart' as _i12;
import 'package:seom_v2/domain/parking_tickets/entities/parking_ticket.dart'
    as _i11;
import 'package:seom_v2/presentation/add_payment_method/add_payment_method_screen.dart'
    as _i5;
import 'package:seom_v2/presentation/feedback/feedback_screen.dart' as _i3;
import 'package:seom_v2/presentation/home/home_screen.dart' as _i2;
import 'package:seom_v2/presentation/parking_tickets/parking_tickets_history_screen.dart'
    as _i8;
import 'package:seom_v2/presentation/payment_methods_management/payment_methods_management_screen.dart'
    as _i4;
import 'package:seom_v2/presentation/payment_process/parking_details_screen/parking_details_screen.dart'
    as _i6;
import 'package:seom_v2/presentation/payment_process/payment_method_chooser_screen/payment_method_chooser_screen.dart'
    as _i7;
import 'package:seom_v2/presentation/sign_in/sign_in_screen.dart' as _i1;

class Router extends _i9.RootStackRouter {
  Router([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SignInScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SignInScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    FeedbackScreenRoute.name: (routeData) {
      final args = routeData.argsAs<FeedbackScreenRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
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
    PaymentMethodsManagementScreenRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PaymentMethodsManagementScreen(),
      );
    },
    AddPaymentMethodScreenRoute.name: (routeData) {
      final args = routeData.argsAs<AddPaymentMethodScreenRouteArgs>();
      return _i9.MaterialPageX<bool>(
        routeData: routeData,
        child: _i5.AddPaymentMethodScreen(
          key: args.key,
          cardType: args.cardType,
          isPaying: args.isPaying,
        ),
      );
    },
    ParkingDetailsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ParkingDetailsScreenRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.ParkingDetailsScreen(
          key: args.key,
          parkingTicket: args.parkingTicket,
        ),
      );
    },
    PaymentMethodChooserScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentMethodChooserScreenRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.PaymentMethodChooserScreen(
          key: args.key,
          receiptId: args.receiptId,
        ),
      );
    },
    ParkingTicketsHistoryScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ParkingTicketsHistoryScreenRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.ParkingTicketsHistoryScreen(
          key: args.key,
          parkingTickets: args.parkingTickets,
        ),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          SignInScreenRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          HomeScreenRoute.name,
          path: '/home-screen',
        ),
        _i9.RouteConfig(
          FeedbackScreenRoute.name,
          path: '/feedback-screen',
        ),
        _i9.RouteConfig(
          PaymentMethodsManagementScreenRoute.name,
          path: '/payment-methods-management-screen',
        ),
        _i9.RouteConfig(
          AddPaymentMethodScreenRoute.name,
          path: '/add-payment-method-screen',
        ),
        _i9.RouteConfig(
          ParkingDetailsScreenRoute.name,
          path: '/parking-details-screen',
        ),
        _i9.RouteConfig(
          PaymentMethodChooserScreenRoute.name,
          path: '/payment-method-chooser-screen',
        ),
        _i9.RouteConfig(
          ParkingTicketsHistoryScreenRoute.name,
          path: '/parking-tickets-history-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SignInScreen]
class SignInScreenRoute extends _i9.PageRouteInfo<void> {
  const SignInScreenRoute()
      : super(
          SignInScreenRoute.name,
          path: '/',
        );

  static const String name = 'SignInScreenRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreenRoute extends _i9.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/home-screen',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i3.FeedbackScreen]
class FeedbackScreenRoute extends _i9.PageRouteInfo<FeedbackScreenRouteArgs> {
  FeedbackScreenRoute({
    _i10.Key? key,
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

  final _i10.Key? key;

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

/// generated route for
/// [_i4.PaymentMethodsManagementScreen]
class PaymentMethodsManagementScreenRoute extends _i9.PageRouteInfo<void> {
  const PaymentMethodsManagementScreenRoute()
      : super(
          PaymentMethodsManagementScreenRoute.name,
          path: '/payment-methods-management-screen',
        );

  static const String name = 'PaymentMethodsManagementScreenRoute';
}

/// generated route for
/// [_i5.AddPaymentMethodScreen]
class AddPaymentMethodScreenRoute
    extends _i9.PageRouteInfo<AddPaymentMethodScreenRouteArgs> {
  AddPaymentMethodScreenRoute({
    _i10.Key? key,
    required String cardType,
    required bool isPaying,
  }) : super(
          AddPaymentMethodScreenRoute.name,
          path: '/add-payment-method-screen',
          args: AddPaymentMethodScreenRouteArgs(
            key: key,
            cardType: cardType,
            isPaying: isPaying,
          ),
        );

  static const String name = 'AddPaymentMethodScreenRoute';
}

class AddPaymentMethodScreenRouteArgs {
  const AddPaymentMethodScreenRouteArgs({
    this.key,
    required this.cardType,
    required this.isPaying,
  });

  final _i10.Key? key;

  final String cardType;

  final bool isPaying;

  @override
  String toString() {
    return 'AddPaymentMethodScreenRouteArgs{key: $key, cardType: $cardType, isPaying: $isPaying}';
  }
}

/// generated route for
/// [_i6.ParkingDetailsScreen]
class ParkingDetailsScreenRoute
    extends _i9.PageRouteInfo<ParkingDetailsScreenRouteArgs> {
  ParkingDetailsScreenRoute({
    _i10.Key? key,
    required _i11.ParkingTicket parkingTicket,
  }) : super(
          ParkingDetailsScreenRoute.name,
          path: '/parking-details-screen',
          args: ParkingDetailsScreenRouteArgs(
            key: key,
            parkingTicket: parkingTicket,
          ),
        );

  static const String name = 'ParkingDetailsScreenRoute';
}

class ParkingDetailsScreenRouteArgs {
  const ParkingDetailsScreenRouteArgs({
    this.key,
    required this.parkingTicket,
  });

  final _i10.Key? key;

  final _i11.ParkingTicket parkingTicket;

  @override
  String toString() {
    return 'ParkingDetailsScreenRouteArgs{key: $key, parkingTicket: $parkingTicket}';
  }
}

/// generated route for
/// [_i7.PaymentMethodChooserScreen]
class PaymentMethodChooserScreenRoute
    extends _i9.PageRouteInfo<PaymentMethodChooserScreenRouteArgs> {
  PaymentMethodChooserScreenRoute({
    _i10.Key? key,
    required int receiptId,
  }) : super(
          PaymentMethodChooserScreenRoute.name,
          path: '/payment-method-chooser-screen',
          args: PaymentMethodChooserScreenRouteArgs(
            key: key,
            receiptId: receiptId,
          ),
        );

  static const String name = 'PaymentMethodChooserScreenRoute';
}

class PaymentMethodChooserScreenRouteArgs {
  const PaymentMethodChooserScreenRouteArgs({
    this.key,
    required this.receiptId,
  });

  final _i10.Key? key;

  final int receiptId;

  @override
  String toString() {
    return 'PaymentMethodChooserScreenRouteArgs{key: $key, receiptId: $receiptId}';
  }
}

/// generated route for
/// [_i8.ParkingTicketsHistoryScreen]
class ParkingTicketsHistoryScreenRoute
    extends _i9.PageRouteInfo<ParkingTicketsHistoryScreenRouteArgs> {
  ParkingTicketsHistoryScreenRoute({
    _i10.Key? key,
    required _i12.KtList<_i11.ParkingTicket> parkingTickets,
  }) : super(
          ParkingTicketsHistoryScreenRoute.name,
          path: '/parking-tickets-history-screen',
          args: ParkingTicketsHistoryScreenRouteArgs(
            key: key,
            parkingTickets: parkingTickets,
          ),
        );

  static const String name = 'ParkingTicketsHistoryScreenRoute';
}

class ParkingTicketsHistoryScreenRouteArgs {
  const ParkingTicketsHistoryScreenRouteArgs({
    this.key,
    required this.parkingTickets,
  });

  final _i10.Key? key;

  final _i12.KtList<_i11.ParkingTicket> parkingTickets;

  @override
  String toString() {
    return 'ParkingTicketsHistoryScreenRouteArgs{key: $key, parkingTickets: $parkingTickets}';
  }
}
