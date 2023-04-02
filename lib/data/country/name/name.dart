// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'name.freezed.dart';
part 'name.g.dart';

@freezed
class Name with _$Name {
  const factory Name({
    required String common,
    required String official,
  }) = _Name;

  factory Name.fromJson(Map<String, Object?> json) => _$NameFromJson(json);
}
