// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:currency_app/resources/strings/asset_map.dart' as _i3;
import 'package:currency_app/services/auth_service.dart' as _i4;
import 'package:currency_app/services/country_service.dart' as _i9;
import 'package:currency_app/services/currency_service.dart' as _i5;
import 'package:currency_app/services/dio_service.dart' as _i6;
import 'package:currency_app/services/navigator_service.dart' as _i7;
import 'package:currency_app/services/persistance_service.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AssetMap>(() => _i3.AssetMap());
    gh.lazySingleton<_i4.AuthService>(
        () => _i4.AuthService(gh<_i3.AssetMap>()));
    gh.lazySingleton<_i5.CurrencyService>(() => _i5.CurrencyService());
    gh.lazySingleton<_i6.DioService>(() => _i6.DioService());
    gh.lazySingleton<_i7.NavigatorService>(() => _i7.NavigatorService());
    gh.lazySingleton<_i8.PersistanceService>(() => _i8.PersistanceService());
    gh.lazySingleton<_i9.CountryService>(
        () => _i9.CountryService(gh<_i6.DioService>()));
    return this;
  }
}
