import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/permissions/i_permissions_manager.dart';
import '../../domain/permissions/permission_failure.dart';

part 'permissions_event.dart';
part 'permissions_state.dart';
part 'permissions_bloc.freezed.dart';

@injectable
class PermissionsBloc extends Bloc<PermissionsEvent, PermissionsState> {
  final IPermissionsManager _permissionsManager;

  PermissionsBloc(
    this._permissionsManager,
  ) : super(PermissionsState.initial()) {
    on<PermissionsEvent>((event, emit) async {
      await event.map<FutureOr<void>>(
        locationVerificationStarted: (event) async {
          Either<PermissionFailure, Unit>? failureOrSuccess;

          emit(
            state.copyWith(
              verificationInProgress: true,
              verificationFailureOrSucessOption: none(),
            ),
          );

          failureOrSuccess = await _permissionsManager.verifyLocationService();

          emit(
            state.copyWith(
              verificationInProgress: false,
              verificationFailureOrSucessOption: optionOf(failureOrSuccess),
            ),
          );
        },
      );
    });
  }
}
