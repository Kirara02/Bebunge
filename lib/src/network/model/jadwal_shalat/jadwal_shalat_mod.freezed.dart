// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jadwal_shalat_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JadwalShalatMod _$JadwalShalatModFromJson(Map<String, dynamic> json) {
  return _JadwalShalatMod.fromJson(json);
}

/// @nodoc
mixin _$JadwalShalatMod {
  AzanTiming get timings => throw _privateConstructorUsedError;
  AzanDate get date => throw _privateConstructorUsedError;
  AzanMeta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JadwalShalatModCopyWith<JadwalShalatMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JadwalShalatModCopyWith<$Res> {
  factory $JadwalShalatModCopyWith(
          JadwalShalatMod value, $Res Function(JadwalShalatMod) then) =
      _$JadwalShalatModCopyWithImpl<$Res, JadwalShalatMod>;
  @useResult
  $Res call({AzanTiming timings, AzanDate date, AzanMeta meta});

  $AzanTimingCopyWith<$Res> get timings;
  $AzanDateCopyWith<$Res> get date;
  $AzanMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$JadwalShalatModCopyWithImpl<$Res, $Val extends JadwalShalatMod>
    implements $JadwalShalatModCopyWith<$Res> {
  _$JadwalShalatModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timings = null,
    Object? date = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      timings: null == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as AzanTiming,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as AzanDate,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as AzanMeta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AzanTimingCopyWith<$Res> get timings {
    return $AzanTimingCopyWith<$Res>(_value.timings, (value) {
      return _then(_value.copyWith(timings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AzanDateCopyWith<$Res> get date {
    return $AzanDateCopyWith<$Res>(_value.date, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AzanMetaCopyWith<$Res> get meta {
    return $AzanMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JadwalShalatModCopyWith<$Res>
    implements $JadwalShalatModCopyWith<$Res> {
  factory _$$_JadwalShalatModCopyWith(
          _$_JadwalShalatMod value, $Res Function(_$_JadwalShalatMod) then) =
      __$$_JadwalShalatModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AzanTiming timings, AzanDate date, AzanMeta meta});

  @override
  $AzanTimingCopyWith<$Res> get timings;
  @override
  $AzanDateCopyWith<$Res> get date;
  @override
  $AzanMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_JadwalShalatModCopyWithImpl<$Res>
    extends _$JadwalShalatModCopyWithImpl<$Res, _$_JadwalShalatMod>
    implements _$$_JadwalShalatModCopyWith<$Res> {
  __$$_JadwalShalatModCopyWithImpl(
      _$_JadwalShalatMod _value, $Res Function(_$_JadwalShalatMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timings = null,
    Object? date = null,
    Object? meta = null,
  }) {
    return _then(_$_JadwalShalatMod(
      timings: null == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as AzanTiming,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as AzanDate,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as AzanMeta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JadwalShalatMod implements _JadwalShalatMod {
  _$_JadwalShalatMod(
      {this.timings = const AzanTiming(),
      this.date = const AzanDate(),
      this.meta = const AzanMeta()});

  factory _$_JadwalShalatMod.fromJson(Map<String, dynamic> json) =>
      _$$_JadwalShalatModFromJson(json);

  @override
  @JsonKey()
  final AzanTiming timings;
  @override
  @JsonKey()
  final AzanDate date;
  @override
  @JsonKey()
  final AzanMeta meta;

  @override
  String toString() {
    return 'JadwalShalatMod(timings: $timings, date: $date, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JadwalShalatMod &&
            (identical(other.timings, timings) || other.timings == timings) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timings, date, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JadwalShalatModCopyWith<_$_JadwalShalatMod> get copyWith =>
      __$$_JadwalShalatModCopyWithImpl<_$_JadwalShalatMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JadwalShalatModToJson(
      this,
    );
  }
}

abstract class _JadwalShalatMod implements JadwalShalatMod {
  factory _JadwalShalatMod(
      {final AzanTiming timings,
      final AzanDate date,
      final AzanMeta meta}) = _$_JadwalShalatMod;

  factory _JadwalShalatMod.fromJson(Map<String, dynamic> json) =
      _$_JadwalShalatMod.fromJson;

  @override
  AzanTiming get timings;
  @override
  AzanDate get date;
  @override
  AzanMeta get meta;
  @override
  @JsonKey(ignore: true)
  _$$_JadwalShalatModCopyWith<_$_JadwalShalatMod> get copyWith =>
      throw _privateConstructorUsedError;
}
