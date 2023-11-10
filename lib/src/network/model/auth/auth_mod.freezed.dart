// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthMod _$AuthModFromJson(Map<String, dynamic> json) {
  return _AuthMod.fromJson(json);
}

/// @nodoc
mixin _$AuthMod {
  bool? get success => throw _privateConstructorUsedError;
  bool? get message => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthModCopyWith<AuthMod> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModCopyWith<$Res> {
  factory $AuthModCopyWith(AuthMod value, $Res Function(AuthMod) then) =
      _$AuthModCopyWithImpl<$Res, AuthMod>;
  @useResult
  $Res call({bool? success, bool? message, String? token});
}

/// @nodoc
class _$AuthModCopyWithImpl<$Res, $Val extends AuthMod>
    implements $AuthModCopyWith<$Res> {
  _$AuthModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthModCopyWith<$Res> implements $AuthModCopyWith<$Res> {
  factory _$$_AuthModCopyWith(
          _$_AuthMod value, $Res Function(_$_AuthMod) then) =
      __$$_AuthModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, bool? message, String? token});
}

/// @nodoc
class __$$_AuthModCopyWithImpl<$Res>
    extends _$AuthModCopyWithImpl<$Res, _$_AuthMod>
    implements _$$_AuthModCopyWith<$Res> {
  __$$_AuthModCopyWithImpl(_$_AuthMod _value, $Res Function(_$_AuthMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_AuthMod(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthMod implements _AuthMod {
  _$_AuthMod({this.success, this.message, this.token});

  factory _$_AuthMod.fromJson(Map<String, dynamic> json) =>
      _$$_AuthModFromJson(json);

  @override
  final bool? success;
  @override
  final bool? message;
  @override
  final String? token;

  @override
  String toString() {
    return 'AuthMod(success: $success, message: $message, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthMod &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthModCopyWith<_$_AuthMod> get copyWith =>
      __$$_AuthModCopyWithImpl<_$_AuthMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthModToJson(
      this,
    );
  }
}

abstract class _AuthMod implements AuthMod {
  factory _AuthMod(
      {final bool? success,
      final bool? message,
      final String? token}) = _$_AuthMod;

  factory _AuthMod.fromJson(Map<String, dynamic> json) = _$_AuthMod.fromJson;

  @override
  bool? get success;
  @override
  bool? get message;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthModCopyWith<_$_AuthMod> get copyWith =>
      throw _privateConstructorUsedError;
}
