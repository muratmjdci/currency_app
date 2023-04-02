import 'package:currency_app/view/login/login_view.dart';
import 'package:flutter/material.dart';

import 'package:currency_app/view/currency_select/currency_select_view.dart';
import 'package:currency_app/view/splash_page/splash_page_view.dart';
import 'package:currency_app/view/currency_page/currency_page_view.dart';
import '../locator.dart';

enum Routes<P> {
  splash(SplashPageView.new),
  login(LoginView.new),
  currencyPage(CurrencyPageView.new),
  currencySelect(CurrencySelectView.new);

  final Widget Function(P) _wb;

  const Routes(this._wb);

  Widget viewBuilder(String? p) => _wb(_unmap(p));

  Future<T?>? call<T>({P? data, bool replace = false, bool clearStack = false}) =>
      toUri(data: data).go(replace: replace, clearStack: clearStack);

  void returnBack() => navigator.goBackUntil(this);

  Uri toUri({P? data}) => Uri(path: name, queryParameters: data != null ? {'q': _map(data)} : null);
}

String _map(value) {
  if (value is Enum) return value.name;
  return value.toString();
}

T _unmap<T>(String? param) {
  if (T == int) return int.tryParse(param!)! as T;
  if (T == bool) return param.parseBool() as T;

  return param as T;
}

extension UriRouteExtensions on Uri {
  bool contains(Routes route, [arg]) {
    if (path != route.name) return false;
    if (arg == null) return true;
    return queryParameters.values.contains(_map(arg));
  }

  Routes get route => Routes.values.byName(path);

  Future<T?>? go<T>({bool replace = false, bool clearStack = false}) =>
      navigator.navigateTo(this, replace: replace, clearStack: clearStack);
}

extension StringNullableExtensions on String? {
  bool parseBool() => this?.toLowerCase() == 'true';
}
