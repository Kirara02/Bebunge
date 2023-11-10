// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kecamatan_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KecamatanMod _$KecamatanModFromJson(Map<String, dynamic> json) {
  return _KecamatanMod.fromJson(json);
}

/// @nodoc
mixin _$KecamatanMod {
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KecamatanModCopyWith<KecamatanMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KecamatanModCopyWith<$Res> {
  factory $KecamatanModCopyWith(
          KecamatanMod value, $Res Function(KecamatanMod) then) =
      _$KecamatanModCopyWithImpl<$Res, KecamatanMod>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$KecamatanModCopyWithImpl<$Res, $Val extends KecamatanMod>
    implements $KecamatanModCopyWith<$Res> {
  _$KecamatanModCopyWithImpl(this._value, this._then);

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
abstract class _$$_KecamatanModCopyWith<$Res>
    implements $KecamatanModCopyWith<$Res> {
  factory _$$_KecamatanModCopyWith(
          _$_KecamatanMod value, $Res Function(_$_KecamatanMod) then) =
      __$$_KecamatanModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$_KecamatanModCopyWithImpl<$Res>
    extends _$KecamatanModCopyWithImpl<$Res, _$_KecamatanMod>
    implements _$$_KecamatanModCopyWith<$Res> {
  __$$_KecamatanModCopyWithImpl(
      _$_KecamatanMod _value, $Res Function(_$_KecamatanMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_KecamatanMod(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KecamatanMod implements _KecamatanMod {
  const _$_KecamatanMod({this.name});

  factory _$_KecamatanMod.fromJson(Map<String, dynamic> json) =>
      _$$_KecamatanModFromJson(json);

  @override
  final String? name;

  @override
  String toString() {
    return 'KecamatanMod(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KecamatanMod &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KecamatanModCopyWith<_$_KecamatanMod> get copyWith =>
      __$$_KecamatanModCopyWithImpl<_$_KecamatanMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KecamatanModToJson(
      this,
    );
  }
}

abstract class _KecamatanMod implements KecamatanMod {
  const factory _KecamatanMod({final String? name}) = _$_KecamatanMod;

  factory _KecamatanMod.fromJson(Map<String, dynamic> json) =
      _$_KecamatanMod.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_KecamatanModCopyWith<_$_KecamatanMod> get copyWith =>
      throw _privateConstructorUsedError;
}
