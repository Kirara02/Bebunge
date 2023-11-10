// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'azan_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AzanDate _$AzanDateFromJson(Map<String, dynamic> json) {
  return _AzanDate.fromJson(json);
}

/// @nodoc
mixin _$AzanDate {
  String? get readable => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;
  Gregorian get gregorian => throw _privateConstructorUsedError;
  Hijri? get hijri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AzanDateCopyWith<AzanDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzanDateCopyWith<$Res> {
  factory $AzanDateCopyWith(AzanDate value, $Res Function(AzanDate) then) =
      _$AzanDateCopyWithImpl<$Res, AzanDate>;
  @useResult
  $Res call(
      {String? readable, String? timestamp, Gregorian gregorian, Hijri? hijri});

  $GregorianCopyWith<$Res> get gregorian;
  $HijriCopyWith<$Res>? get hijri;
}

/// @nodoc
class _$AzanDateCopyWithImpl<$Res, $Val extends AzanDate>
    implements $AzanDateCopyWith<$Res> {
  _$AzanDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readable = freezed,
    Object? timestamp = freezed,
    Object? gregorian = null,
    Object? hijri = freezed,
  }) {
    return _then(_value.copyWith(
      readable: freezed == readable
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      gregorian: null == gregorian
          ? _value.gregorian
          : gregorian // ignore: cast_nullable_to_non_nullable
              as Gregorian,
      hijri: freezed == hijri
          ? _value.hijri
          : hijri // ignore: cast_nullable_to_non_nullable
              as Hijri?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GregorianCopyWith<$Res> get gregorian {
    return $GregorianCopyWith<$Res>(_value.gregorian, (value) {
      return _then(_value.copyWith(gregorian: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HijriCopyWith<$Res>? get hijri {
    if (_value.hijri == null) {
      return null;
    }

    return $HijriCopyWith<$Res>(_value.hijri!, (value) {
      return _then(_value.copyWith(hijri: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AzanDateCopyWith<$Res> implements $AzanDateCopyWith<$Res> {
  factory _$$_AzanDateCopyWith(
          _$_AzanDate value, $Res Function(_$_AzanDate) then) =
      __$$_AzanDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? readable, String? timestamp, Gregorian gregorian, Hijri? hijri});

  @override
  $GregorianCopyWith<$Res> get gregorian;
  @override
  $HijriCopyWith<$Res>? get hijri;
}

/// @nodoc
class __$$_AzanDateCopyWithImpl<$Res>
    extends _$AzanDateCopyWithImpl<$Res, _$_AzanDate>
    implements _$$_AzanDateCopyWith<$Res> {
  __$$_AzanDateCopyWithImpl(
      _$_AzanDate _value, $Res Function(_$_AzanDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readable = freezed,
    Object? timestamp = freezed,
    Object? gregorian = null,
    Object? hijri = freezed,
  }) {
    return _then(_$_AzanDate(
      readable: freezed == readable
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      gregorian: null == gregorian
          ? _value.gregorian
          : gregorian // ignore: cast_nullable_to_non_nullable
              as Gregorian,
      hijri: freezed == hijri
          ? _value.hijri
          : hijri // ignore: cast_nullable_to_non_nullable
              as Hijri?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AzanDate implements _AzanDate {
  const _$_AzanDate(
      {this.readable,
      this.timestamp,
      this.gregorian = const Gregorian(),
      this.hijri});

  factory _$_AzanDate.fromJson(Map<String, dynamic> json) =>
      _$$_AzanDateFromJson(json);

  @override
  final String? readable;
  @override
  final String? timestamp;
  @override
  @JsonKey()
  final Gregorian gregorian;
  @override
  final Hijri? hijri;

  @override
  String toString() {
    return 'AzanDate(readable: $readable, timestamp: $timestamp, gregorian: $gregorian, hijri: $hijri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AzanDate &&
            (identical(other.readable, readable) ||
                other.readable == readable) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.gregorian, gregorian) ||
                other.gregorian == gregorian) &&
            (identical(other.hijri, hijri) || other.hijri == hijri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, readable, timestamp, gregorian, hijri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AzanDateCopyWith<_$_AzanDate> get copyWith =>
      __$$_AzanDateCopyWithImpl<_$_AzanDate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AzanDateToJson(
      this,
    );
  }
}

abstract class _AzanDate implements AzanDate {
  const factory _AzanDate(
      {final String? readable,
      final String? timestamp,
      final Gregorian gregorian,
      final Hijri? hijri}) = _$_AzanDate;

  factory _AzanDate.fromJson(Map<String, dynamic> json) = _$_AzanDate.fromJson;

  @override
  String? get readable;
  @override
  String? get timestamp;
  @override
  Gregorian get gregorian;
  @override
  Hijri? get hijri;
  @override
  @JsonKey(ignore: true)
  _$$_AzanDateCopyWith<_$_AzanDate> get copyWith =>
      throw _privateConstructorUsedError;
}
