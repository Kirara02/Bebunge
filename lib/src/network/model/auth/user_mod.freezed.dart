// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserMod _$UserModFromJson(Map<String, dynamic> json) {
  return _UserMod.fromJson(json);
}

/// @nodoc
mixin _$UserMod {
  int? get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  dynamic get phoneNumber => throw _privateConstructorUsedError;
  dynamic get address => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModCopyWith<UserMod> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModCopyWith<$Res> {
  factory $UserModCopyWith(UserMod value, $Res Function(UserMod) then) =
      _$UserModCopyWithImpl<$Res, UserMod>;
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? name,
      String? email,
      dynamic phoneNumber,
      dynamic address,
      String? status});
}

/// @nodoc
class _$UserModCopyWithImpl<$Res, $Val extends UserMod>
    implements $UserModCopyWith<$Res> {
  _$UserModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModCopyWith<$Res> implements $UserModCopyWith<$Res> {
  factory _$$_UserModCopyWith(
          _$_UserMod value, $Res Function(_$_UserMod) then) =
      __$$_UserModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? code,
      String? name,
      String? email,
      dynamic phoneNumber,
      dynamic address,
      String? status});
}

/// @nodoc
class __$$_UserModCopyWithImpl<$Res>
    extends _$UserModCopyWithImpl<$Res, _$_UserMod>
    implements _$$_UserModCopyWith<$Res> {
  __$$_UserModCopyWithImpl(_$_UserMod _value, $Res Function(_$_UserMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_UserMod(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserMod implements _UserMod {
  _$_UserMod(
      {this.id,
      this.code,
      this.name,
      this.email,
      this.phoneNumber,
      this.address,
      this.status});

  factory _$_UserMod.fromJson(Map<String, dynamic> json) =>
      _$$_UserModFromJson(json);

  @override
  final int? id;
  @override
  final String? code;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final dynamic phoneNumber;
  @override
  final dynamic address;
  @override
  final String? status;

  @override
  String toString() {
    return 'UserMod(id: $id, code: $code, name: $name, email: $email, phoneNumber: $phoneNumber, address: $address, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserMod &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      name,
      email,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(address),
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModCopyWith<_$_UserMod> get copyWith =>
      __$$_UserModCopyWithImpl<_$_UserMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModToJson(
      this,
    );
  }
}

abstract class _UserMod implements UserMod {
  factory _UserMod(
      {final int? id,
      final String? code,
      final String? name,
      final String? email,
      final dynamic phoneNumber,
      final dynamic address,
      final String? status}) = _$_UserMod;

  factory _UserMod.fromJson(Map<String, dynamic> json) = _$_UserMod.fromJson;

  @override
  int? get id;
  @override
  String? get code;
  @override
  String? get name;
  @override
  String? get email;
  @override
  dynamic get phoneNumber;
  @override
  dynamic get address;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_UserModCopyWith<_$_UserMod> get copyWith =>
      throw _privateConstructorUsedError;
}
