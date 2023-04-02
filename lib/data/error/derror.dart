// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'derror.freezed.dart';
part 'derror.g.dart';

@freezed
class DError with _$DError {
  const factory DError({
    required String errorMsg,
    required int errorCode,
  }) = _DError;

  factory DError.fromJson(Map<String, Object?> json) => _$DErrorFromJson(json);
}
