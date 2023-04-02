// import 'package:change_case/change_case.dart';
// import 'package:driver/locator.dart';
import 'package:intl/intl.dart';

import '../../locator.dart';
import 'asset_map.dart';

enum Tr {
  usernameHint,
  loginButton,
  currencyHint,
  passwordHint;

  const Tr();

  static String? fromKey(String? key) => sl<AssetMap>()[key];

  String get key => name;

  String call({Map<Trp, dynamic>? replace, Tr? fallback, dynamic suffix}) {
    if (fallback != null && replace?.values.any((v) => v == null) == true) return fallback(suffix: suffix);
    var s = fromKey("$key${suffix ?? ''}") ?? '';
    replace?.forEach((k, v) => s = s.replaceAll('{${k.name}}', v?.toString() ?? ''));
    return Intl.message(s);
  }

  Map<int, String> getMultiple() => sl<AssetMap>().getList(key);

  bool isA(String? value) => key == value;
}

enum Trp { name, date, hour, km, second, minute, tl }

extension TrListExtensions on Iterable<Tr> {
  bool has(String? key) => map((tr) => tr.key).contains(key);
}
