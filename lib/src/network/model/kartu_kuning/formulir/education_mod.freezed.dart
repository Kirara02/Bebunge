// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EducationMod _$EducationModFromJson(Map<String, dynamic> json) {
  return _EducationMod.fromJson(json);
}

/// @nodoc
mixin _$EducationMod {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EducationModCopyWith<EducationMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationModCopyWith<$Res> {
  factory $EducationModCopyWith(
          EducationMod value, $Res Function(EducationMod) then) =
      _$EducationModCopyWithImpl<$Res, EducationMod>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$EducationModCopyWithImpl<$Res, $Val extends EducationMod>
    implements $EducationModCopyWith<$Res> {
  _$EducationModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EducationModCopyWith<$Res>
    implements $EducationModCopyWith<$Res> {
  factory _$$_EducationModCopyWith(
          _$_EducationMod value, $Res Function(_$_EducationMod) then) =
      __$$_EducationModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$_EducationModCopyWithImpl<$Res>
    extends _$EducationModCopyWithImpl<$Res, _$_EducationMod>
    implements _$$_EducationModCopyWith<$Res> {
  __$$_EducationModCopyWithImpl(
      _$_EducationMod _value, $Res Function(_$_EducationMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_EducationMod(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EducationMod implements _EducationMod {
  const _$_EducationMod({this.name});

  factory _$_EducationMod.fromJson(Map<String, dynamic> json) =>
      _$$_EducationModFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'EducationMod(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EducationMod &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EducationModCopyWith<_$_EducationMod> get copyWith =>
      __$$_EducationModCopyWithImpl<_$_EducationMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EducationModToJson(
      this,
    );
  }
}

abstract class _EducationMod implements EducationMod {
  const factory _EducationMod({final String? name}) = _$_EducationMod;

  factory _EducationMod.fromJson(Map<String, dynamic> json) =
      _$_EducationMod.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_EducationModCopyWith<_$_EducationMod> get copyWith =>
      throw _privateConstructorUsedError;
}
