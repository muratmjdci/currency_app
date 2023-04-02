// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Country _$$_CountryFromJson(Map<String, dynamic> json) => _$_Country(
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      flags: Flags.fromJson(json['flags'] as Map<String, dynamic>),
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flags': instance.flags,
      'currency': instance.currency,
    };
