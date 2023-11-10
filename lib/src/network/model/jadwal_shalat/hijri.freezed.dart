// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hijri.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hijri _$HijriFromJson(Map<String, dynamic> json) {
  return _Hijri.fromJson(json);
}

/// @nodoc
mixin _$Hijri {
  String? get date => throw _privateConstructorUsedError;
  String? get format => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HijriCopyWith<Hijri> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HijriCopyWith<$Res> {
  factory $HijriCopyWith(Hijri value, $Res Function(Hijri) then) =
      _$HijriCopyWithImpl<$Res, Hijri>;
  @useResult
  $Res call({String? date, String? format, String? day});
}

/// @nodoc
class _$HijriCopyWithImpl<$Res, $Val extends Hijri>
    implements $HijriCopyWith<$Res> {
  _$HijriCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? format = freezed,
    Object? day = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HijriCopyWith<$Res> implements $HijriCopyWith<$Res> {
  factory _$$_HijriCopyWith(_$_Hijri value, $Res Function(_$_Hijri) then) =
      __$$_HijriCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, String? format, String? day});
}

/// @nodoc
class __$$_HijriCopyWithImpl<$Res> extends _$HijriCopyWithImpl<$Res, _$_Hijri>
    implements _$$_HijriCopyWith<$Res> {
  __$$_HijriCopyWithImpl(_$_Hijri _value, $Res Function(_$_Hijri) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? format = freezed,
    Object? day = freezed,
  }) {
    return _then(_$_Hijri(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hijri implements _Hijri {
  _$_Hijri({this.date, this.format, this.day});

  factory _$_Hijri.fromJson(Map<String, dynamic> json) =>
      _$$_HijriFromJson(json);

  @override
  final String? date;
  @override
  final String? format;
  @override
  final String? day;

  @override
  String toString() {
    return 'Hijri(date: $date, format: $format, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hijri &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, format, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HijriCopyWith<_$_Hijri> get copyWith =>
      __$$_HijriCopyWithImpl<_$_Hijri>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HijriToJson(
      this,
    );
  }
}

abstract class _Hijri implements Hijri {
  factory _Hijri(
      {final String? date, final String? format, final String? day}) = _$_Hijri;

  factory _Hijri.fromJson(Map<String, dynamic> json) = _$_Hijri.fromJson;

  @override
  String? get date;
  @override
  String? get format;
  @override
  String? get day;
  @override
  @JsonKey(ignore: true)
  _$$_HijriCopyWith<_$_Hijri> get copyWith =>
      throw _privateConstructorUsedError;
}
