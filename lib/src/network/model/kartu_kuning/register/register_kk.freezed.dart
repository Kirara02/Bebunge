// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_kk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterKk _$RegisterKkFromJson(Map<String, dynamic> json) {
  return _RegisterKk.fromJson(json);
}

/// @nodoc
mixin _$RegisterKk {
  bool get success => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterKkCopyWith<RegisterKk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterKkCopyWith<$Res> {
  factory $RegisterKkCopyWith(
          RegisterKk value, $Res Function(RegisterKk) then) =
      _$RegisterKkCopyWithImpl<$Res, RegisterKk>;
  @useResult
  $Res call({bool success, String data});
}

/// @nodoc
class _$RegisterKkCopyWithImpl<$Res, $Val extends RegisterKk>
    implements $RegisterKkCopyWith<$Res> {
  _$RegisterKkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterKkCopyWith<$Res>
    implements $RegisterKkCopyWith<$Res> {
  factory _$$_RegisterKkCopyWith(
          _$_RegisterKk value, $Res Function(_$_RegisterKk) then) =
      __$$_RegisterKkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String data});
}

/// @nodoc
class __$$_RegisterKkCopyWithImpl<$Res>
    extends _$RegisterKkCopyWithImpl<$Res, _$_RegisterKk>
    implements _$$_RegisterKkCopyWith<$Res> {
  __$$_RegisterKkCopyWithImpl(
      _$_RegisterKk _value, $Res Function(_$_RegisterKk) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$_RegisterKk(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterKk implements _RegisterKk {
  const _$_RegisterKk({required this.success, required this.data});

  factory _$_RegisterKk.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterKkFromJson(json);

  @override
  final bool success;
  @override
  final String data;

  @override
  String toString() {
    return 'RegisterKk(success: $success, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterKk &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterKkCopyWith<_$_RegisterKk> get copyWith =>
      __$$_RegisterKkCopyWithImpl<_$_RegisterKk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterKkToJson(
      this,
    );
  }
}

abstract class _RegisterKk implements RegisterKk {
  const factory _RegisterKk(
      {required final bool success,
      required final String data}) = _$_RegisterKk;

  factory _RegisterKk.fromJson(Map<String, dynamic> json) =
      _$_RegisterKk.fromJson;

  @override
  bool get success;
  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterKkCopyWith<_$_RegisterKk> get copyWith =>
      throw _privateConstructorUsedError;
}
