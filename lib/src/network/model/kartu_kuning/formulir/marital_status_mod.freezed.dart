// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marital_status_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MaritalStatusMod _$MaritalStatusModFromJson(Map<String, dynamic> json) {
  return _MaritalStatusMod.fromJson(json);
}

/// @nodoc
mixin _$MaritalStatusMod {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MaritalStatusModCopyWith<MaritalStatusMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaritalStatusModCopyWith<$Res> {
  factory $MaritalStatusModCopyWith(
          MaritalStatusMod value, $Res Function(MaritalStatusMod) then) =
      _$MaritalStatusModCopyWithImpl<$Res, MaritalStatusMod>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$MaritalStatusModCopyWithImpl<$Res, $Val extends MaritalStatusMod>
    implements $MaritalStatusModCopyWith<$Res> {
  _$MaritalStatusModCopyWithImpl(this._value, this._then);

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
abstract class _$$_MaritalStatusModCopyWith<$Res>
    implements $MaritalStatusModCopyWith<$Res> {
  factory _$$_MaritalStatusModCopyWith(
          _$_MaritalStatusMod value, $Res Function(_$_MaritalStatusMod) then) =
      __$$_MaritalStatusModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_MaritalStatusModCopyWithImpl<$Res>
    extends _$MaritalStatusModCopyWithImpl<$Res, _$_MaritalStatusMod>
    implements _$$_MaritalStatusModCopyWith<$Res> {
  __$$_MaritalStatusModCopyWithImpl(
      _$_MaritalStatusMod _value, $Res Function(_$_MaritalStatusMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_MaritalStatusMod(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MaritalStatusMod implements _MaritalStatusMod {
  const _$_MaritalStatusMod({required this.name});

  factory _$_MaritalStatusMod.fromJson(Map<String, dynamic> json) =>
      _$$_MaritalStatusModFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'MaritalStatusMod(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MaritalStatusMod &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MaritalStatusModCopyWith<_$_MaritalStatusMod> get copyWith =>
      __$$_MaritalStatusModCopyWithImpl<_$_MaritalStatusMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MaritalStatusModToJson(
      this,
    );
  }
}

abstract class _MaritalStatusMod implements MaritalStatusMod {
  const factory _MaritalStatusMod({required final String name}) =
      _$_MaritalStatusMod;

  factory _MaritalStatusMod.fromJson(Map<String, dynamic> json) =
      _$_MaritalStatusMod.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_MaritalStatusModCopyWith<_$_MaritalStatusMod> get copyWith =>
      throw _privateConstructorUsedError;
}
