// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      success: json['success'] as bool,
      data: json['data'],
      error: json['error'] == null
          ? null
          : DError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'error': instance.error,
    };
