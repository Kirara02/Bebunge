// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'formulir_kk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FormulirKk _$FormulirKkFromJson(Map<String, dynamic> json) {
  return _FormulirKk.fromJson(json);
}

/// @nodoc
mixin _$FormulirKk {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormulirKkCopyWith<FormulirKk> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormulirKkCopyWith<$Res> {
  factory $FormulirKkCopyWith(
          FormulirKk value, $Res Function(FormulirKk) then) =
      _$FormulirKkCopyWithImpl<$Res, FormulirKk>;
  @useResult
  $Res call({bool? success, String? message});
}

/// @nodoc
class _$FormulirKkCopyWithImpl<$Res, $Val extends FormulirKk>
    implements $FormulirKkCopyWith<$Res> {
  _$FormulirKkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormulirKkCopyWith<$Res>
    implements $FormulirKkCopyWith<$Res> {
  factory _$$_FormulirKkCopyWith(
          _$_FormulirKk value, $Res Function(_$_FormulirKk) then) =
      __$$_FormulirKkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message});
}

/// @nodoc
class __$$_FormulirKkCopyWithImpl<$Res>
    extends _$FormulirKkCopyWithImpl<$Res, _$_FormulirKk>
    implements _$$_FormulirKkCopyWith<$Res> {
  __$$_FormulirKkCopyWithImpl(
      _$_FormulirKk _value, $Res Function(_$_FormulirKk) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_FormulirKk(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FormulirKk implements _FormulirKk {
  const _$_FormulirKk({this.success, this.message});

  factory _$_FormulirKk.fromJson(Map<String, dynamic> json) =>
      _$$_FormulirKkFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;

  @override
  String toString() {
    return 'FormulirKk(success: $success, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormulirKk &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormulirKkCopyWith<_$_FormulirKk> get copyWith =>
      __$$_FormulirKkCopyWithImpl<_$_FormulirKk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FormulirKkToJson(
      this,
    );
  }
}

abstract class _FormulirKk implements FormulirKk {
  const factory _FormulirKk({final bool? success, final String? message}) =
      _$_FormulirKk;

  factory _FormulirKk.fromJson(Map<String, dynamic> json) =
      _$_FormulirKk.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_FormulirKkCopyWith<_$_FormulirKk> get copyWith =>
      throw _privateConstructorUsedError;
}
