// This file is "main.dart"
// ignore_for_file: invalid_annotation_target

import 'package:currency_app/data/error/derror.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'status.freezed.dart';
part 'status.g.dart';

@freezed
class Status with _$Status {
  const factory Status({
    required bool success,
    Object? data,
    DError? error,
  }) = _Status;

  factory Status.fromJson(Map<String, Object?> json) => _$StatusFromJson(json);
}
