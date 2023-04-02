import 'package:flutter/foundation.dart';

late final Flavor flavor;

enum Flavor {
  dev(kDebugMode),
  prod(!kDebugMode);

  final bool isRelease;

  const Flavor(this.isRelease);
}
