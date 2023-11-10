// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'major_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MajorMod _$MajorModFromJson(Map<String, dynamic> json) {
  return _MajorMod.fromJson(json);
}

/// @nodoc
mixin _$MajorMod {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MajorModCopyWith<MajorMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MajorModCopyWith<$Res> {
  factory $MajorModCopyWith(MajorMod value, $Res Function(MajorMod) then) =
      _$MajorModCopyWithImpl<$Res, MajorMod>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$MajorModCopyWithImpl<$Res, $Val extends MajorMod>
    implements $MajorModCopyWith<$Res> {
  _$MajorModCopyWithImpl(this._value, this._then);

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
abstract class _$$_MajorModCopyWith<$Res> implements $MajorModCopyWith<$Res> {
  factory _$$_MajorModCopyWith(
          _$_MajorMod value, $Res Function(_$_MajorMod) then) =
      __$$_MajorModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$_MajorModCopyWithImpl<$Res>
    extends _$MajorModCopyWithImpl<$Res, _$_MajorMod>
    implements _$$_MajorModCopyWith<$Res> {
  __$$_MajorModCopyWithImpl(
      _$_MajorMod _value, $Res Function(_$_MajorMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_MajorMod(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MajorMod implements _MajorMod {
  const _$_MajorMod({this.name});

  factory _$_MajorMod.fromJson(Map<String, dynamic> json) =>
      _$$_MajorModFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'MajorMod(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MajorMod &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MajorModCopyWith<_$_MajorMod> get copyWith =>
      __$$_MajorModCopyWithImpl<_$_MajorMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MajorModToJson(
      this,
    );
  }
}

abstract class _MajorMod implements MajorMod {
  const factory _MajorMod({final String? name}) = _$_MajorMod;

  factory _MajorMod.fromJson(Map<String, dynamic> json) = _$_MajorMod.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_MajorModCopyWith<_$_MajorMod> get copyWith =>
      throw _privateConstructorUsedError;
}
