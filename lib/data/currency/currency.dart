// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'currency.freezed.dart';
part 'currency.g.dart';

@freezed
class Currency with _$Currency {
  const factory Currency({
    required String currencyCode,
    required double rate,
    double? amount,
  }) = _Currency;

  factory Currency.fromJson(Map<String, Object?> json) => _$CurrencyFromJson(json);
}
