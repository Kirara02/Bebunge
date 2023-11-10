// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'religion_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReligionMod _$ReligionModFromJson(Map<String, dynamic> json) {
  return _ReligionMod.fromJson(json);
}

/// @nodoc
mixin _$ReligionMod {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReligionModCopyWith<ReligionMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReligionModCopyWith<$Res> {
  factory $ReligionModCopyWith(
          ReligionMod value, $Res Function(ReligionMod) then) =
      _$ReligionModCopyWithImpl<$Res, ReligionMod>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ReligionModCopyWithImpl<$Res, $Val extends ReligionMod>
    implements $ReligionModCopyWith<$Res> {
  _$ReligionModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReligionModCopyWith<$Res>
    implements $ReligionModCopyWith<$Res> {
  factory _$$_ReligionModCopyWith(
          _$_ReligionMod value, $Res Function(_$_ReligionMod) then) =
      __$$_ReligionModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_ReligionModCopyWithImpl<$Res>
    extends _$ReligionModCopyWithImpl<$Res, _$_ReligionMod>
    implements _$$_ReligionModCopyWith<$Res> {
  __$$_ReligionModCopyWithImpl(
      _$_ReligionMod _value, $Res Function(_$_ReligionMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_ReligionMod(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReligionMod implements _ReligionMod {
  const _$_ReligionMod({required this.name});

  factory _$_ReligionMod.fromJson(Map<String, dynamic> json) =>
      _$$_ReligionModFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'ReligionMod(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReligionMod &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReligionModCopyWith<_$_ReligionMod> get copyWith =>
      __$$_ReligionModCopyWithImpl<_$_ReligionMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReligionModToJson(
      this,
    );
  }
}

abstract class _ReligionMod implements ReligionMod {
  const factory _ReligionMod({required final String name}) = _$_ReligionMod;

  factory _ReligionMod.fromJson(Map<String, dynamic> json) =
      _$_ReligionMod.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ReligionModCopyWith<_$_ReligionMod> get copyWith =>
      throw _privateConstructorUsedError;
}
