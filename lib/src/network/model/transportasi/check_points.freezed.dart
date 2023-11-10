// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_points.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckPointMod _$CheckPointModFromJson(Map<String, dynamic> json) {
  return _CheckPointMod.fromJson(json);
}

/// @nodoc
mixin _$CheckPointMod {
  int? get id => throw _privateConstructorUsedError;
  TerminalMod? get terminal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckPointModCopyWith<CheckPointMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckPointModCopyWith<$Res> {
  factory $CheckPointModCopyWith(
          CheckPointMod value, $Res Function(CheckPointMod) then) =
      _$CheckPointModCopyWithImpl<$Res, CheckPointMod>;
  @useResult
  $Res call({int? id, TerminalMod? terminal});

  $TerminalModCopyWith<$Res>? get terminal;
}

/// @nodoc
class _$CheckPointModCopyWithImpl<$Res, $Val extends CheckPointMod>
    implements $CheckPointModCopyWith<$Res> {
  _$CheckPointModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? terminal = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      terminal: freezed == terminal
          ? _value.terminal
          : terminal // ignore: cast_nullable_to_non_nullable
              as TerminalMod?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TerminalModCopyWith<$Res>? get terminal {
    if (_value.terminal == null) {
      return null;
    }

    return $TerminalModCopyWith<$Res>(_value.terminal!, (value) {
      return _then(_value.copyWith(terminal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CheckPointModCopyWith<$Res>
    implements $CheckPointModCopyWith<$Res> {
  factory _$$_CheckPointModCopyWith(
          _$_CheckPointMod value, $Res Function(_$_CheckPointMod) then) =
      __$$_CheckPointModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, TerminalMod? terminal});

  @override
  $TerminalModCopyWith<$Res>? get terminal;
}

/// @nodoc
class __$$_CheckPointModCopyWithImpl<$Res>
    extends _$CheckPointModCopyWithImpl<$Res, _$_CheckPointMod>
    implements _$$_CheckPointModCopyWith<$Res> {
  __$$_CheckPointModCopyWithImpl(
      _$_CheckPointMod _value, $Res Function(_$_CheckPointMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? terminal = freezed,
  }) {
    return _then(_$_CheckPointMod(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      terminal: freezed == terminal
          ? _value.terminal
          : terminal // ignore: cast_nullable_to_non_nullable
              as TerminalMod?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckPointMod implements _CheckPointMod {
  _$_CheckPointMod({this.id, this.terminal});

  factory _$_CheckPointMod.fromJson(Map<String, dynamic> json) =>
      _$$_CheckPointModFromJson(json);

  @override
  final int? id;
  @override
  final TerminalMod? terminal;

  @override
  String toString() {
    return 'CheckPointMod(id: $id, terminal: $terminal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckPointMod &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.terminal, terminal) ||
                other.terminal == terminal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, terminal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckPointModCopyWith<_$_CheckPointMod> get copyWith =>
      __$$_CheckPointModCopyWithImpl<_$_CheckPointMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckPointModToJson(
      this,
    );
  }
}

abstract class _CheckPointMod implements CheckPointMod {
  factory _CheckPointMod({final int? id, final TerminalMod? terminal}) =
      _$_CheckPointMod;

  factory _CheckPointMod.fromJson(Map<String, dynamic> json) =
      _$_CheckPointMod.fromJson;

  @override
  int? get id;
  @override
  TerminalMod? get terminal;
  @override
  @JsonKey(ignore: true)
  _$$_CheckPointModCopyWith<_$_CheckPointMod> get copyWith =>
      throw _privateConstructorUsedError;
}
