// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'flags.freezed.dart';
part 'flags.g.dart';

@freezed
class Flags with _$Flags {
  const factory Flags({
    required String png,
    required String svg,
    String? alt,
  }) = _Flags;

  factory Flags.fromJson(Map<String, Object?> json) => _$FlagsFromJson(json);
}
