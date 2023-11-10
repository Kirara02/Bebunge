// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'desa_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DesaMod _$DesaModFromJson(Map<String, dynamic> json) {
  return _DesaMod.fromJson(json);
}

/// @nodoc
mixin _$DesaMod {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "zip_code")
  String get zipCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DesaModCopyWith<DesaMod> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesaModCopyWith<$Res> {
  factory $DesaModCopyWith(DesaMod value, $Res Function(DesaMod) then) =
      _$DesaModCopyWithImpl<$Res, DesaMod>;
  @useResult
  $Res call({String name, @JsonKey(name: "zip_code") String zipCode});
}

/// @nodoc
class _$DesaModCopyWithImpl<$Res, $Val extends DesaMod>
    implements $DesaModCopyWith<$Res> {
  _$DesaModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? zipCode = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DesaModCopyWith<$Res> implements $DesaModCopyWith<$Res> {
  factory _$$_DesaModCopyWith(
          _$_DesaMod value, $Res Function(_$_DesaMod) then) =
      __$$_DesaModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @JsonKey(name: "zip_code") String zipCode});
}

/// @nodoc
class __$$_DesaModCopyWithImpl<$Res>
    extends _$DesaModCopyWithImpl<$Res, _$_DesaMod>
    implements _$$_DesaModCopyWith<$Res> {
  __$$_DesaModCopyWithImpl(_$_DesaMod _value, $Res Function(_$_DesaMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? zipCode = null,
  }) {
    return _then(_$_DesaMod(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DesaMod implements _DesaMod {
  const _$_DesaMod(
      {required this.name, @JsonKey(name: "zip_code") required this.zipCode});

  factory _$_DesaMod.fromJson(Map<String, dynamic> json) =>
      _$$_DesaModFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: "zip_code")
  final String zipCode;

  @override
  String toString() {
    return 'DesaMod(name: $name, zipCode: $zipCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DesaMod &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, zipCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DesaModCopyWith<_$_DesaMod> get copyWith =>
      __$$_DesaModCopyWithImpl<_$_DesaMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DesaModToJson(
      this,
    );
  }
}

abstract class _DesaMod implements DesaMod {
  const factory _DesaMod(
      {required final String name,
      @JsonKey(name: "zip_code") required final String zipCode}) = _$_DesaMod;

  factory _DesaMod.fromJson(Map<String, dynamic> json) = _$_DesaMod.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: "zip_code")
  String get zipCode;
  @override
  @JsonKey(ignore: true)
  _$$_DesaModCopyWith<_$_DesaMod> get copyWith =>
      throw _privateConstructorUsedError;
}
