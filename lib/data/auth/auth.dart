// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class Auth with _$Auth {
  const factory Auth({
    required int id,
    required String username,
    required String password,
  }) = _Auth;

  factory Auth.fromJson(Map<String, Object?> json) => _$AuthFromJson(json);
}
