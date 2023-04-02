// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @HiveType(typeId: 1)
  const factory User({
    @HiveField(0) required int id,
    @HiveField(1) required String username,
    @HiveField(2) required String name,
    @HiveField(3) required int age,
    @HiveField(4) required String country,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
