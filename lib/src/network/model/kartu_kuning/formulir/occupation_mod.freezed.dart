// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occupation_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OccupationMod _$OccupationModFromJson(Map<String, dynamic> json) {
  return _OccupationMod.fromJson(json);
}

/// @nodoc
mixin _$OccupationMod {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccupationModCopyWith<OccupationMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccupationModCopyWith<$Res> {
  factory $OccupationModCopyWith(
          OccupationMod value, $Res Function(OccupationMod) then) =
      _$OccupationModCopyWithImpl<$Res, OccupationMod>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$OccupationModCopyWithImpl<$Res, $Val extends OccupationMod>
    implements $OccupationModCopyWith<$Res> {
  _$OccupationModCopyWithImpl(this._value, this._then);

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
abstract class _$$_OccupationModCopyWith<$Res>
    implements $OccupationModCopyWith<$Res> {
  factory _$$_OccupationModCopyWith(
          _$_OccupationMod value, $Res Function(_$_OccupationMod) then) =
      __$$_OccupationModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$_OccupationModCopyWithImpl<$Res>
    extends _$OccupationModCopyWithImpl<$Res, _$_OccupationMod>
    implements _$$_OccupationModCopyWith<$Res> {
  __$$_OccupationModCopyWithImpl(
      _$_OccupationMod _value, $Res Function(_$_OccupationMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_OccupationMod(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OccupationMod implements _OccupationMod {
  const _$_OccupationMod({this.name});

  factory _$_OccupationMod.fromJson(Map<String, dynamic> json) =>
      _$$_OccupationModFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'OccupationMod(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OccupationMod &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OccupationModCopyWith<_$_OccupationMod> get copyWith =>
      __$$_OccupationModCopyWithImpl<_$_OccupationMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OccupationModToJson(
      this,
    );
  }
}

abstract class _OccupationMod implements OccupationMod {
  const factory _OccupationMod({final String? name}) = _$_OccupationMod;

  factory _OccupationMod.fromJson(Map<String, dynamic> json) =
      _$_OccupationMod.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_OccupationModCopyWith<_$_OccupationMod> get copyWith =>
      throw _privateConstructorUsedError;
}
