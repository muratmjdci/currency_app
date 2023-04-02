import 'package:flutter/foundation.dart';

late final Flavor flavor;

enum Flavor {
  dev(kDebugMode),
  prod(kReleaseMode);

  final bool isRelease;

  const Flavor(this.isRelease);
}
