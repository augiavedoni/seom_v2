// ignore_for_file: library_private_types_in_public_api

part of './request_status.dart';

class SeomFailure {
  const SeomFailure(this.errorMessage);

  final String errorMessage;

  static SeomFailure mapError<E extends SeomFailure>(
    HTTPErrorDto error,
    Map<String, E> errors,
  ) =>
      errors[error.status] ?? GenericFailure.unknown(error.message);

  Route<void> genericRoute(
    BuildContext context, {
    void Function()? onRetry,
    void Function()? onExit,
    void Function()? onWillPop,
  }) =>
      MaterialPageRoute(
        builder: (context) => const Scaffold(),
      );
  // InfoFeedbackView.route(
  //   title: 'unexpected_problem'.tr,
  //   description: errorMessage,
  //   primaryButton: FeedbackButton(
  //     text: 'retry'.tr,
  //     onPressed: () {
  //       if (onRetry != null) {
  //         onRetry();
  //         return;
  //       }
  //       Navigator.pop(context);
  //     },
  //   ),
  //   secondaryButton: FeedbackButton(
  //     text: 'cancel'.tr,
  //     onPressed: () {
  //       if (onExit != null) {
  //         onExit();
  //         return;
  //       }
  //       Navigator.pop(context);
  //     },
  //   ),
  //   onWillPop: onWillPop,
  // );

  void whenFailure<E extends SeomFailure>(
    void Function(E e) mapper,
    void Function(GenericFailure e) genericMapper,
  ) {
    if (this is E) {
      return mapper.call(this as E);
    } else if (this is GenericFailure) {
      return genericMapper(this as GenericFailure);
    }

    throw FlutterError('E no esta definido');
  }

  R mapFailure<R, E extends SeomFailure>(
    R Function(E e) mapper,
    R Function(GenericFailure e) genericMapper,
  ) {
    if (this is E) {
      return mapper.call(this as E);
    } else if (this is GenericFailure) {
      return genericMapper(this as GenericFailure);
    }

    throw FlutterError('E no esta definido');
  }
}

class GenericFailure extends SeomFailure {
  const GenericFailure(String message) : super(message);
  factory GenericFailure.noInternet([String? message]) =
      _GenericFailureNoInternet;
  factory GenericFailure.unknown([String? message]) = _GenericFailureUnknown;

  bool get isNoInternet => this is _GenericFailureNoInternet;

  Route<void> mapRoute(
    BuildContext context, {
    void Function()? onRetry,
    void Function()? onExit,
    void Function()? onWillPop,
    Route<void> Function()? onNoInternetFailure,
    Route<void> Function()? onUnknownFailure,
  }) =>
      maybeMap(
        noInternet: (_) {
          if (onNoInternetFailure != null) {
            return onNoInternetFailure();
          }

          return MaterialPageRoute(
            builder: (context) => const Scaffold(),
          );

          // return InfoFeedbackView.route(
          //   title: 'connection_problem'.tr,
          //   description: 'please_retry'.tr,
          //   primaryButton: FeedbackButton(
          //     text: 'retry'.tr,
          //     onPressed: () {
          //       if (onRetry != null) {
          //         onRetry();
          //         return;
          //       }
          //       Navigator.pop(context);
          //     },
          //   ),
          //   secondaryButton: FeedbackButton(
          //     text: 'exit'.tr,
          //     onPressed: () {
          //       if (onExit != null) {
          //         onExit();
          //         return;
          //       }
          //       Navigator.pop(context);
          //     },
          //   ),
          //   onWillPop: onWillPop,
          // );
        },
        unknown: (_) {
          if (onUnknownFailure != null) {
            return onUnknownFailure();
          }

          return genericRoute(context,
              onRetry: onRetry, onExit: onExit, onWillPop: onWillPop);
        },
        orElse: () => genericRoute(
          context,
          onRetry: onRetry,
          onExit: onExit,
          onWillPop: onWillPop,
        ),
      );

  void when({
    required void Function(_GenericFailureNoInternet) noInternet,
    required void Function(_GenericFailureUnknown) unknown,
  }) {
    if (this is _GenericFailureNoInternet) {
      noInternet.call(this as _GenericFailureNoInternet);
      return;
    }

    if (this is _GenericFailureUnknown) {
      unknown.call(this as _GenericFailureUnknown);
      return;
    }

    noInternet.call(this as _GenericFailureNoInternet);
  }

  R map<R>({
    required R Function(_GenericFailureNoInternet) noInternet,
    required R Function(_GenericFailureUnknown) unknown,
  }) {
    if (this is _GenericFailureNoInternet) {
      return noInternet.call(this as _GenericFailureNoInternet);
    }

    if (this is _GenericFailureUnknown) {
      return unknown.call(this as _GenericFailureUnknown);
    }

    return noInternet.call(this as _GenericFailureNoInternet);
  }

  void maybeWhen({
    void Function(_GenericFailureNoInternet)? noInternet,
    void Function(_GenericFailureUnknown)? unknown,
    required void Function() orElse,
  }) {
    if (this is _GenericFailureNoInternet && noInternet != null) {
      noInternet.call(this as _GenericFailureNoInternet);
      return;
    }

    if (this is _GenericFailureUnknown && unknown != null) {
      unknown.call(this as _GenericFailureUnknown);
      return;
    }

    orElse.call();
  }

  R maybeMap<R>({
    R Function(_GenericFailureNoInternet)? noInternet,
    R Function(_GenericFailureUnknown)? unknown,
    required R Function() orElse,
  }) {
    if (this is _GenericFailureNoInternet && noInternet != null) {
      return noInternet.call(this as _GenericFailureNoInternet);
    }

    if (this is _GenericFailureUnknown && unknown != null) {
      return unknown.call(this as _GenericFailureUnknown);
    }

    return orElse.call();
  }
}

class _GenericFailureNoInternet extends GenericFailure {
  _GenericFailureNoInternet([String? message])
      : super(message ?? 'connection_problem');
}

class _GenericFailureUnknown extends GenericFailure {
  _GenericFailureUnknown([String? message]) : super(message ?? 'please_retry');
}
