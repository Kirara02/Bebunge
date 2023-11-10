// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quota_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuotaMod _$QuotaModFromJson(Map<String, dynamic> json) {
  return _QuotaMod.fromJson(json);
}

/// @nodoc
mixin _$QuotaMod {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuotaModCopyWith<QuotaMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotaModCopyWith<$Res> {
  factory $QuotaModCopyWith(QuotaMod value, $Res Function(QuotaMod) then) =
      _$QuotaModCopyWithImpl<$Res, QuotaMod>;
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class _$QuotaModCopyWithImpl<$Res, $Val extends QuotaMod>
    implements $QuotaModCopyWith<$Res> {
  _$QuotaModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuotaModCopyWith<$Res> implements $QuotaModCopyWith<$Res> {
  factory _$$_QuotaModCopyWith(
          _$_QuotaMod value, $Res Function(_$_QuotaMod) then) =
      __$$_QuotaModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message});
}

/// @nodoc
class __$$_QuotaModCopyWithImpl<$Res>
    extends _$QuotaModCopyWithImpl<$Res, _$_QuotaMod>
    implements _$$_QuotaModCopyWith<$Res> {
  __$$_QuotaModCopyWithImpl(
      _$_QuotaMod _value, $Res Function(_$_QuotaMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
  }) {
    return _then(_$_QuotaMod(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuotaMod implements _QuotaMod {
  const _$_QuotaMod({required this.success, required this.message});

  factory _$_QuotaMod.fromJson(Map<String, dynamic> json) =>
      _$$_QuotaModFromJson(json);

  @override
  final bool success;
  @override
  final String message;

  @override
  String toString() {
    return 'QuotaMod(success: $success, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuotaMod &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuotaModCopyWith<_$_QuotaMod> get copyWith =>
      __$$_QuotaModCopyWithImpl<_$_QuotaMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuotaModToJson(
      this,
    );
  }
}

abstract class _QuotaMod implements QuotaMod {
  const factory _QuotaMod(
      {required final bool success,
      required final String message}) = _$_QuotaMod;

  factory _QuotaMod.fromJson(Map<String, dynamic> json) = _$_QuotaMod.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_QuotaModCopyWith<_$_QuotaMod> get copyWith =>
      throw _privateConstructorUsedError;
}
