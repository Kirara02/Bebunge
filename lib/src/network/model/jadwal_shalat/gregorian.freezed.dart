// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gregorian.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Gregorian _$GregorianFromJson(Map<String, dynamic> json) {
  return _Gregorian.fromJson(json);
}

/// @nodoc
mixin _$Gregorian {
  String get date => throw _privateConstructorUsedError;
  String? get format => throw _privateConstructorUsedError;
  GregorianMonth? get month => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GregorianCopyWith<Gregorian> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GregorianCopyWith<$Res> {
  factory $GregorianCopyWith(Gregorian value, $Res Function(Gregorian) then) =
      _$GregorianCopyWithImpl<$Res, Gregorian>;
  @useResult
  $Res call({String date, String? format, GregorianMonth? month, String? day});

  $GregorianMonthCopyWith<$Res>? get month;
}

/// @nodoc
class _$GregorianCopyWithImpl<$Res, $Val extends Gregorian>
    implements $GregorianCopyWith<$Res> {
  _$GregorianCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? format = freezed,
    Object? month = freezed,
    Object? day = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as GregorianMonth?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GregorianMonthCopyWith<$Res>? get month {
    if (_value.month == null) {
      return null;
    }

    return $GregorianMonthCopyWith<$Res>(_value.month!, (value) {
      return _then(_value.copyWith(month: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GregorianCopyWith<$Res> implements $GregorianCopyWith<$Res> {
  factory _$$_GregorianCopyWith(
          _$_Gregorian value, $Res Function(_$_Gregorian) then) =
      __$$_GregorianCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String? format, GregorianMonth? month, String? day});

  @override
  $GregorianMonthCopyWith<$Res>? get month;
}

/// @nodoc
class __$$_GregorianCopyWithImpl<$Res>
    extends _$GregorianCopyWithImpl<$Res, _$_Gregorian>
    implements _$$_GregorianCopyWith<$Res> {
  __$$_GregorianCopyWithImpl(
      _$_Gregorian _value, $Res Function(_$_Gregorian) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? format = freezed,
    Object? month = freezed,
    Object? day = freezed,
  }) {
    return _then(_$_Gregorian(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as GregorianMonth?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Gregorian implements _Gregorian {
  const _$_Gregorian(
      {this.date = '',
      this.format = '',
      this.month = const GregorianMonth(),
      this.day});

  factory _$_Gregorian.fromJson(Map<String, dynamic> json) =>
      _$$_GregorianFromJson(json);

  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final String? format;
  @override
  @JsonKey()
  final GregorianMonth? month;
  @override
  final String? day;

  @override
  String toString() {
    return 'Gregorian(date: $date, format: $format, month: $month, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Gregorian &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, format, month, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GregorianCopyWith<_$_Gregorian> get copyWith =>
      __$$_GregorianCopyWithImpl<_$_Gregorian>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GregorianToJson(
      this,
    );
  }
}

abstract class _Gregorian implements Gregorian {
  const factory _Gregorian(
      {final String date,
      final String? format,
      final GregorianMonth? month,
      final String? day}) = _$_Gregorian;

  factory _Gregorian.fromJson(Map<String, dynamic> json) =
      _$_Gregorian.fromJson;

  @override
  String get date;
  @override
  String? get format;
  @override
  GregorianMonth? get month;
  @override
  String? get day;
  @override
  @JsonKey(ignore: true)
  _$$_GregorianCopyWith<_$_Gregorian> get copyWith =>
      throw _privateConstructorUsedError;
}
