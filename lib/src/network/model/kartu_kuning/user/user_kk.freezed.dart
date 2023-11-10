// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_kk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserKk _$UserKkFromJson(Map<String, dynamic> json) {
  return _UserKk.fromJson(json);
}

/// @nodoc
mixin _$UserKk {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserKkCopyWith<UserKk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserKkCopyWith<$Res> {
  factory $UserKkCopyWith(UserKk value, $Res Function(UserKk) then) =
      _$UserKkCopyWithImpl<$Res, UserKk>;
  @useResult
  $Res call({int id, String name, String email, String phone, String status});
}

/// @nodoc
class _$UserKkCopyWithImpl<$Res, $Val extends UserKk>
    implements $UserKkCopyWith<$Res> {
  _$UserKkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserKkCopyWith<$Res> implements $UserKkCopyWith<$Res> {
  factory _$$_UserKkCopyWith(_$_UserKk value, $Res Function(_$_UserKk) then) =
      __$$_UserKkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String email, String phone, String status});
}

/// @nodoc
class __$$_UserKkCopyWithImpl<$Res>
    extends _$UserKkCopyWithImpl<$Res, _$_UserKk>
    implements _$$_UserKkCopyWith<$Res> {
  __$$_UserKkCopyWithImpl(_$_UserKk _value, $Res Function(_$_UserKk) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? status = null,
  }) {
    return _then(_$_UserKk(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserKk implements _UserKk {
  const _$_UserKk(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.status});

  factory _$_UserKk.fromJson(Map<String, dynamic> json) =>
      _$$_UserKkFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String status;

  @override
  String toString() {
    return 'UserKk(id: $id, name: $name, email: $email, phone: $phone, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserKk &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, phone, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserKkCopyWith<_$_UserKk> get copyWith =>
      __$$_UserKkCopyWithImpl<_$_UserKk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserKkToJson(
      this,
    );
  }
}

abstract class _UserKk implements UserKk {
  const factory _UserKk(
      {required final int id,
      required final String name,
      required final String email,
      required final String phone,
      required final String status}) = _$_UserKk;

  factory _UserKk.fromJson(Map<String, dynamic> json) = _$_UserKk.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_UserKkCopyWith<_$_UserKk> get copyWith =>
      throw _privateConstructorUsedError;
}
