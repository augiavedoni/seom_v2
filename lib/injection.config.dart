// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i14;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i10;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i11;
import 'application/vehicles/vehicle_actor/vehicle_actor_bloc.dart' as _i12;
import 'application/vehicles/vehicle_watcher/vehicle_watcher_bloc.dart' as _i13;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/vehicles/i_vehicle_repository.dart' as _i8;
import 'infrastructure/auth/seom_auth_facade.dart' as _i7;
import 'infrastructure/core/http/seom_client.dart' as _i3;
import 'infrastructure/core/seom_injectable_modules.dart' as _i15;
import 'infrastructure/datasource/token_data_source.dart' as _i4;
import 'infrastructure/datasource/user_data_source.dart' as _i5;
import 'infrastructure/vehicles/vehicle_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final seomInjectableModules = _$SeomInjectableModules();
  gh.lazySingleton<_i3.SeomClient>(() => seomInjectableModules.seomClient);
  gh.lazySingleton<_i4.TokenDataSource>(
      () => seomInjectableModules.tokenDataSource);
  gh.lazySingleton<_i5.UserDataSource>(
      () => seomInjectableModules.userDataSource);
  gh.factory<_i6.IAuthFacade>(() => _i7.SeomAuthFacade(get<_i3.SeomClient>(),
      get<_i5.UserDataSource>(), get<_i4.TokenDataSource>()));
  gh.factory<_i8.IVehicleRepository>(() =>
      _i9.VehicleRepository(get<_i3.SeomClient>(), get<_i5.UserDataSource>()));
  gh.factory<_i10.SignInFormBloc>(
      () => _i10.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i11.SignUpFormBloc>(
      () => _i11.SignUpFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i12.VehicleActorBloc>(
      () => _i12.VehicleActorBloc(get<_i8.IVehicleRepository>()));
  gh.factory<_i13.VehicleWatcherBloc>(
      () => _i13.VehicleWatcherBloc(get<_i8.IVehicleRepository>()));
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(get<_i6.IAuthFacade>()));
  return get;
}

class _$SeomInjectableModules extends _i15.SeomInjectableModules {}
