import 'dart:io';

import 'package:currency_app/flavor_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'locator.dart';
import 'resources/strings/asset_map.dart';
import 'resources/theme.dart';
import 'routing/routes.dart';

part 'main.g.dart';

run(Flavor runFlavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  flavor = runFlavor;
  configureDependencies();
  await initDependencies();
  runApp(const CurrencyApp());
}

@swidget
Widget currencyApp() {
  return MaterialApp(
    // showPerformanceOverlay: true,
    debugShowCheckedModeBanner: false,
    localizationsDelegates: GlobalMaterialLocalizations.delegates,
    supportedLocales: supportedLocales,
    theme: theme,
    builder: (_, child) {
      if (!flavor.isRelease) child = Banner(location: BannerLocation.topStart, message: flavor.name, child: child);
      return child!;
    },
    navigatorKey: navigator.navigatorKey,
    navigatorObservers: [navigator.routeObserver],
    onGenerateRoute: (settings) => onGenerateRoute(settings),
    initialRoute: "splash",
  );
}

Route<dynamic> onGenerateRoute(RouteSettings settings) =>
    (Platform.isIOS ? CupertinoPageRoute.new : MaterialPageRoute.new)(
        settings: settings,
        builder: (_) {
          final uri = Uri.parse(settings.name!);
          final route = uri.route;
          Widget child = route.viewBuilder(uri.queryParameters['q']);
          // if (!flavor.isRelease) child = LogConsoleOnShake(debugOnly: false, child: child);
          return child;
        });
