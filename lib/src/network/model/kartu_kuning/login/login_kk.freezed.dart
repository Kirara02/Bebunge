// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_kk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginKk _$LoginKkFromJson(Map<String, dynamic> json) {
  return _LoginKk.fromJson(json);
}

/// @nodoc
mixin _$LoginKk {
  UserKk? get user => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginKkCopyWith<LoginKk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginKkCopyWith<$Res> {
  factory $LoginKkCopyWith(LoginKk value, $Res Function(LoginKk) then) =
      _$LoginKkCopyWithImpl<$Res, LoginKk>;
  @useResult
  $Res call({UserKk? user, String? token});

  $UserKkCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoginKkCopyWithImpl<$Res, $Val extends LoginKk>
    implements $LoginKkCopyWith<$Res> {
  _$LoginKkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserKk?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserKkCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserKkCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginKkCopyWith<$Res> implements $LoginKkCopyWith<$Res> {
  factory _$$_LoginKkCopyWith(
          _$_LoginKk value, $Res Function(_$_LoginKk) then) =
      __$$_LoginKkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserKk? user, String? token});

  @override
  $UserKkCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_LoginKkCopyWithImpl<$Res>
    extends _$LoginKkCopyWithImpl<$Res, _$_LoginKk>
    implements _$$_LoginKkCopyWith<$Res> {
  __$$_LoginKkCopyWithImpl(_$_LoginKk _value, $Res Function(_$_LoginKk) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_LoginKk(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserKk?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginKk implements _LoginKk {
  const _$_LoginKk({this.user, this.token});

  factory _$_LoginKk.fromJson(Map<String, dynamic> json) =>
      _$$_LoginKkFromJson(json);

  @override
  final UserKk? user;
  @override
  final String? token;

  @override
  String toString() {
    return 'LoginKk(user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginKk &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginKkCopyWith<_$_LoginKk> get copyWith =>
      __$$_LoginKkCopyWithImpl<_$_LoginKk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginKkToJson(
      this,
    );
  }
}

abstract class _LoginKk implements LoginKk {
  const factory _LoginKk({final UserKk? user, final String? token}) =
      _$_LoginKk;

  factory _LoginKk.fromJson(Map<String, dynamic> json) = _$_LoginKk.fromJson;

  @override
  UserKk? get user;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_LoginKkCopyWith<_$_LoginKk> get copyWith =>
      throw _privateConstructorUsedError;
}
