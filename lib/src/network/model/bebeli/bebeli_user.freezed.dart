// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bebeli_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BebeliUser _$BebeliUserFromJson(Map<String, dynamic> json) {
  return _BebeliUser.fromJson(json);
}

/// @nodoc
mixin _$BebeliUser {
  String? get username => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BebeliUserCopyWith<BebeliUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BebeliUserCopyWith<$Res> {
  factory $BebeliUserCopyWith(
          BebeliUser value, $Res Function(BebeliUser) then) =
      _$BebeliUserCopyWithImpl<$Res, BebeliUser>;
  @useResult
  $Res call({String? username, String? type, String? token});
}

/// @nodoc
class _$BebeliUserCopyWithImpl<$Res, $Val extends BebeliUser>
    implements $BebeliUserCopyWith<$Res> {
  _$BebeliUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? type = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BebeliUserCopyWith<$Res>
    implements $BebeliUserCopyWith<$Res> {
  factory _$$_BebeliUserCopyWith(
          _$_BebeliUser value, $Res Function(_$_BebeliUser) then) =
      __$$_BebeliUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, String? type, String? token});
}

/// @nodoc
class __$$_BebeliUserCopyWithImpl<$Res>
    extends _$BebeliUserCopyWithImpl<$Res, _$_BebeliUser>
    implements _$$_BebeliUserCopyWith<$Res> {
  __$$_BebeliUserCopyWithImpl(
      _$_BebeliUser _value, $Res Function(_$_BebeliUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? type = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_BebeliUser(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BebeliUser implements _BebeliUser {
  _$_BebeliUser({this.username, this.type, this.token});

  factory _$_BebeliUser.fromJson(Map<String, dynamic> json) =>
      _$$_BebeliUserFromJson(json);

  @override
  final String? username;
  @override
  final String? type;
  @override
  final String? token;

  @override
  String toString() {
    return 'BebeliUser(username: $username, type: $type, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BebeliUser &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, type, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BebeliUserCopyWith<_$_BebeliUser> get copyWith =>
      __$$_BebeliUserCopyWithImpl<_$_BebeliUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BebeliUserToJson(
      this,
    );
  }
}

abstract class _BebeliUser implements BebeliUser {
  factory _BebeliUser(
      {final String? username,
      final String? type,
      final String? token}) = _$_BebeliUser;

  factory _BebeliUser.fromJson(Map<String, dynamic> json) =
      _$_BebeliUser.fromJson;

  @override
  String? get username;
  @override
  String? get type;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_BebeliUserCopyWith<_$_BebeliUser> get copyWith =>
      throw _privateConstructorUsedError;
}
