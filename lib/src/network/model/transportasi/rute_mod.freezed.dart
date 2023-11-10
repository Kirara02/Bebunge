// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rute_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RuteMod _$RuteModFromJson(Map<String, dynamic> json) {
  return _RuteMod.fromJson(json);
}

/// @nodoc
mixin _$RuteMod {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "no_trayek")
  String? get noTrayek => throw _privateConstructorUsedError;
  @JsonKey(name: "no_angkot")
  String? get noAngkot => throw _privateConstructorUsedError;
  String? get asal => throw _privateConstructorUsedError;
  String? get tujuan => throw _privateConstructorUsedError;
  String? get checkpoints => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RuteModCopyWith<RuteMod> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuteModCopyWith<$Res> {
  factory $RuteModCopyWith(RuteMod value, $Res Function(RuteMod) then) =
      _$RuteModCopyWithImpl<$Res, RuteMod>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "no_trayek") String? noTrayek,
      @JsonKey(name: "no_angkot") String? noAngkot,
      String? asal,
      String? tujuan,
      String? checkpoints});
}

/// @nodoc
class _$RuteModCopyWithImpl<$Res, $Val extends RuteMod>
    implements $RuteModCopyWith<$Res> {
  _$RuteModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? noTrayek = freezed,
    Object? noAngkot = freezed,
    Object? asal = freezed,
    Object? tujuan = freezed,
    Object? checkpoints = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      noTrayek: freezed == noTrayek
          ? _value.noTrayek
          : noTrayek // ignore: cast_nullable_to_non_nullable
              as String?,
      noAngkot: freezed == noAngkot
          ? _value.noAngkot
          : noAngkot // ignore: cast_nullable_to_non_nullable
              as String?,
      asal: freezed == asal
          ? _value.asal
          : asal // ignore: cast_nullable_to_non_nullable
              as String?,
      tujuan: freezed == tujuan
          ? _value.tujuan
          : tujuan // ignore: cast_nullable_to_non_nullable
              as String?,
      checkpoints: freezed == checkpoints
          ? _value.checkpoints
          : checkpoints // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RuteModCopyWith<$Res> implements $RuteModCopyWith<$Res> {
  factory _$$_RuteModCopyWith(
          _$_RuteMod value, $Res Function(_$_RuteMod) then) =
      __$$_RuteModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "no_trayek") String? noTrayek,
      @JsonKey(name: "no_angkot") String? noAngkot,
      String? asal,
      String? tujuan,
      String? checkpoints});
}

/// @nodoc
class __$$_RuteModCopyWithImpl<$Res>
    extends _$RuteModCopyWithImpl<$Res, _$_RuteMod>
    implements _$$_RuteModCopyWith<$Res> {
  __$$_RuteModCopyWithImpl(_$_RuteMod _value, $Res Function(_$_RuteMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? noTrayek = freezed,
    Object? noAngkot = freezed,
    Object? asal = freezed,
    Object? tujuan = freezed,
    Object? checkpoints = freezed,
  }) {
    return _then(_$_RuteMod(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      noTrayek: freezed == noTrayek
          ? _value.noTrayek
          : noTrayek // ignore: cast_nullable_to_non_nullable
              as String?,
      noAngkot: freezed == noAngkot
          ? _value.noAngkot
          : noAngkot // ignore: cast_nullable_to_non_nullable
              as String?,
      asal: freezed == asal
          ? _value.asal
          : asal // ignore: cast_nullable_to_non_nullable
              as String?,
      tujuan: freezed == tujuan
          ? _value.tujuan
          : tujuan // ignore: cast_nullable_to_non_nullable
              as String?,
      checkpoints: freezed == checkpoints
          ? _value.checkpoints
          : checkpoints // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RuteMod implements _RuteMod {
  _$_RuteMod(
      {this.id,
      @JsonKey(name: "no_trayek") this.noTrayek,
      @JsonKey(name: "no_angkot") this.noAngkot,
      this.asal,
      this.tujuan,
      this.checkpoints});

  factory _$_RuteMod.fromJson(Map<String, dynamic> json) =>
      _$$_RuteModFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "no_trayek")
  final String? noTrayek;
  @override
  @JsonKey(name: "no_angkot")
  final String? noAngkot;
  @override
  final String? asal;
  @override
  final String? tujuan;
  @override
  final String? checkpoints;

  @override
  String toString() {
    return 'RuteMod(id: $id, noTrayek: $noTrayek, noAngkot: $noAngkot, asal: $asal, tujuan: $tujuan, checkpoints: $checkpoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RuteMod &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.noTrayek, noTrayek) ||
                other.noTrayek == noTrayek) &&
            (identical(other.noAngkot, noAngkot) ||
                other.noAngkot == noAngkot) &&
            (identical(other.asal, asal) || other.asal == asal) &&
            (identical(other.tujuan, tujuan) || other.tujuan == tujuan) &&
            (identical(other.checkpoints, checkpoints) ||
                other.checkpoints == checkpoints));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, noTrayek, noAngkot, asal, tujuan, checkpoints);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RuteModCopyWith<_$_RuteMod> get copyWith =>
      __$$_RuteModCopyWithImpl<_$_RuteMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RuteModToJson(
      this,
    );
  }
}

abstract class _RuteMod implements RuteMod {
  factory _RuteMod(
      {final int? id,
      @JsonKey(name: "no_trayek") final String? noTrayek,
      @JsonKey(name: "no_angkot") final String? noAngkot,
      final String? asal,
      final String? tujuan,
      final String? checkpoints}) = _$_RuteMod;

  factory _RuteMod.fromJson(Map<String, dynamic> json) = _$_RuteMod.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "no_trayek")
  String? get noTrayek;
  @override
  @JsonKey(name: "no_angkot")
  String? get noAngkot;
  @override
  String? get asal;
  @override
  String? get tujuan;
  @override
  String? get checkpoints;
  @override
  @JsonKey(ignore: true)
  _$$_RuteModCopyWith<_$_RuteMod> get copyWith =>
      throw _privateConstructorUsedError;
}
