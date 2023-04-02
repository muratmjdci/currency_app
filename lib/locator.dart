// ignore_for_file: avoid_single_cascade_in_expression_statements

import 'package:currency_app/locator.config.dart';
import 'package:currency_app/services/dio_service.dart';
import 'package:currency_app/services/persistance_service.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'resources/strings/asset_map.dart';
import 'services/navigator_service.dart';

@injectableInit
configureDependencies() => sl.init();

initDependencies() async {
  await sl<AssetMap>().init();
  await sl<PersistanceService>().init();
  await sl<DioService>().init();
}

GetIt get sl => GetIt.I;

NavigatorService get navigator => sl<NavigatorService>();
