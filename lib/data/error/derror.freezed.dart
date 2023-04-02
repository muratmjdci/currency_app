// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derror.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DError _$DErrorFromJson(Map<String, dynamic> json) {
  return _DError.fromJson(json);
}

/// @nodoc
mixin _$DError {
  String get errorMsg => throw _privateConstructorUsedError;
  int get errorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DErrorCopyWith<DError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DErrorCopyWith<$Res> {
  factory $DErrorCopyWith(DError value, $Res Function(DError) then) =
      _$DErrorCopyWithImpl<$Res, DError>;
  @useResult
  $Res call({String errorMsg, int errorCode});
}

/// @nodoc
class _$DErrorCopyWithImpl<$Res, $Val extends DError>
    implements $DErrorCopyWith<$Res> {
  _$DErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
    Object? errorCode = null,
  }) {
    return _then(_value.copyWith(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DErrorCopyWith<$Res> implements $DErrorCopyWith<$Res> {
  factory _$$_DErrorCopyWith(_$_DError value, $Res Function(_$_DError) then) =
      __$$_DErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMsg, int errorCode});
}

/// @nodoc
class __$$_DErrorCopyWithImpl<$Res>
    extends _$DErrorCopyWithImpl<$Res, _$_DError>
    implements _$$_DErrorCopyWith<$Res> {
  __$$_DErrorCopyWithImpl(_$_DError _value, $Res Function(_$_DError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
    Object? errorCode = null,
  }) {
    return _then(_$_DError(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DError with DiagnosticableTreeMixin implements _DError {
  const _$_DError({required this.errorMsg, required this.errorCode});

  factory _$_DError.fromJson(Map<String, dynamic> json) =>
      _$$_DErrorFromJson(json);

  @override
  final String errorMsg;
  @override
  final int errorCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DError(errorMsg: $errorMsg, errorCode: $errorCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DError'))
      ..add(DiagnosticsProperty('errorMsg', errorMsg))
      ..add(DiagnosticsProperty('errorCode', errorCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DError &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorMsg, errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DErrorCopyWith<_$_DError> get copyWith =>
      __$$_DErrorCopyWithImpl<_$_DError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DErrorToJson(
      this,
    );
  }
}

abstract class _DError implements DError {
  const factory _DError(
      {required final String errorMsg,
      required final int errorCode}) = _$_DError;

  factory _DError.fromJson(Map<String, dynamic> json) = _$_DError.fromJson;

  @override
  String get errorMsg;
  @override
  int get errorCode;
  @override
  @JsonKey(ignore: true)
  _$$_DErrorCopyWith<_$_DError> get copyWith =>
      throw _privateConstructorUsedError;
}
