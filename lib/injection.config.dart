// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i23;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i19;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i20;
import 'application/parking_tickets/parking_ticket_watcher/parking_ticket_watcher_bloc.dart'
    as _i17;
import 'application/payment_methods/payment_method_watcher/payment_method_watcher_bloc.dart'
    as _i18;
import 'application/permissions/permissions_bloc.dart' as _i5;
import 'application/vehicles/vehicle_actor/vehicle_actor_bloc.dart' as _i21;
import 'application/vehicles/vehicle_watcher/vehicle_watcher_bloc.dart' as _i22;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/parking_tickets/i_parking_ticket_repository.dart' as _i11;
import 'domain/payment_methods/i_payment_method_repository.dart' as _i13;
import 'domain/permissions/i_permissions_manager.dart' as _i3;
import 'domain/vehicles/i_vehicle_repository.dart' as _i15;
import 'infrastructure/auth/seom_auth_facade.dart' as _i10;
import 'infrastructure/core/http/seom_client.dart' as _i6;
import 'infrastructure/core/seom_injectable_modules.dart' as _i24;
import 'infrastructure/datasource/token_data_source.dart' as _i7;
import 'infrastructure/datasource/user_data_source.dart' as _i8;
import 'infrastructure/parking_tickets/parking_ticket_repository.dart' as _i12;
import 'infrastructure/payment_methods/payment_method_repository.dart' as _i14;
import 'infrastructure/permissions/permissions_repository.dart' as _i4;
import 'infrastructure/vehicles/vehicle_repository.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final seomInjectableModules = _$SeomInjectableModules();
  gh.factory<_i3.IPermissionsManager>(() => _i4.PermissionsRepository());
  gh.factory<_i5.PermissionsBloc>(
      () => _i5.PermissionsBloc(get<_i3.IPermissionsManager>()));
  gh.lazySingleton<_i6.SeomClient>(() => seomInjectableModules.seomClient);
  gh.factory<_i6.SeomClientContract>(() => _i6.SeomClient());
  gh.lazySingleton<_i7.TokenDataSource>(
      () => seomInjectableModules.tokenDataSource);
  gh.lazySingleton<_i8.UserDataSource>(
      () => seomInjectableModules.userDataSource);
  gh.factory<_i9.IAuthFacade>(() => _i10.SeomAuthFacade(
        get<_i6.SeomClientContract>(),
        get<_i8.UserDataSource>(),
        get<_i7.TokenDataSource>(),
      ));
  gh.factory<_i11.IParkingTicketRepository>(() => _i12.ParkingTicketRepository(
        get<_i6.SeomClientContract>(),
        get<_i8.UserDataSource>(),
      ));
  gh.factory<_i13.IPaymentMethodRepository>(() => _i14.PaymentMethodRepository(
        get<_i6.SeomClientContract>(),
        get<_i8.UserDataSource>(),
      ));
  gh.factory<_i15.IVehicleRepository>(() => _i16.VehicleRepository(
        get<_i6.SeomClientContract>(),
        get<_i8.UserDataSource>(),
      ));
  gh.factory<_i17.ParkingTicketWatcherBloc>(() =>
      _i17.ParkingTicketWatcherBloc(get<_i11.IParkingTicketRepository>()));
  gh.factory<_i18.PaymentMethodWatcherBloc>(() =>
      _i18.PaymentMethodWatcherBloc(get<_i13.IPaymentMethodRepository>()));
  gh.factory<_i19.SignInFormBloc>(
      () => _i19.SignInFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i20.SignUpFormBloc>(
      () => _i20.SignUpFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i21.VehicleActorBloc>(
      () => _i21.VehicleActorBloc(get<_i15.IVehicleRepository>()));
  gh.factory<_i22.VehicleWatcherBloc>(
      () => _i22.VehicleWatcherBloc(get<_i15.IVehicleRepository>()));
  gh.factory<_i23.AuthBloc>(() => _i23.AuthBloc(get<_i9.IAuthFacade>()));
  return get;
}

class _$SeomInjectableModules extends _i24.SeomInjectableModules {}
