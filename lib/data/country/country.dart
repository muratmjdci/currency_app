// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'flags/flags.dart';
import 'name/name.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required Name name,
    required Flags flags,
    String? currency,
  }) = _Country;

  factory Country.fromJson(Map<String, Object?> json) => _$CountryFromJson(json);
}
