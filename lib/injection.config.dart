// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i8;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i6;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i7;
import 'domain/auth/i_auth_facade.dart' as _i4;
import 'infrastructure/auth/seom_auth_facade.dart' as _i5;
import 'infrastructure/core/http/seom_client.dart' as _i3;
import 'infrastructure/core/seom_injectable_modules.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final seomInjectableModules = _$SeomInjectableModules();
  gh.lazySingleton<_i3.SeomClient>(() => seomInjectableModules.seomClient);
  gh.factory<_i4.IAuthFacade>(() => _i5.SeomAuthFacade(get<_i3.SeomClient>()));
  gh.factory<_i6.SignInFormBloc>(
      () => _i6.SignInFormBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i7.SignUpFormBloc>(
      () => _i7.SignUpFormBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i8.AuthBloc>(() => _i8.AuthBloc(get<_i4.IAuthFacade>()));
  return get;
}

class _$SeomInjectableModules extends _i9.SeomInjectableModules {}
