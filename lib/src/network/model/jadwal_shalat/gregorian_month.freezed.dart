// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gregorian_month.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GregorianMonth _$GregorianMonthFromJson(Map<String, dynamic> json) {
  return _GregorianMonth.fromJson(json);
}

/// @nodoc
mixin _$GregorianMonth {
  int? get number => throw _privateConstructorUsedError;
  String? get en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GregorianMonthCopyWith<GregorianMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GregorianMonthCopyWith<$Res> {
  factory $GregorianMonthCopyWith(
          GregorianMonth value, $Res Function(GregorianMonth) then) =
      _$GregorianMonthCopyWithImpl<$Res, GregorianMonth>;
  @useResult
  $Res call({int? number, String? en});
}

/// @nodoc
class _$GregorianMonthCopyWithImpl<$Res, $Val extends GregorianMonth>
    implements $GregorianMonthCopyWith<$Res> {
  _$GregorianMonthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? en = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GregorianMonthCopyWith<$Res>
    implements $GregorianMonthCopyWith<$Res> {
  factory _$$_GregorianMonthCopyWith(
          _$_GregorianMonth value, $Res Function(_$_GregorianMonth) then) =
      __$$_GregorianMonthCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? number, String? en});
}

/// @nodoc
class __$$_GregorianMonthCopyWithImpl<$Res>
    extends _$GregorianMonthCopyWithImpl<$Res, _$_GregorianMonth>
    implements _$$_GregorianMonthCopyWith<$Res> {
  __$$_GregorianMonthCopyWithImpl(
      _$_GregorianMonth _value, $Res Function(_$_GregorianMonth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? en = freezed,
  }) {
    return _then(_$_GregorianMonth(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GregorianMonth implements _GregorianMonth {
  const _$_GregorianMonth({this.number = 0, this.en = ''});

  factory _$_GregorianMonth.fromJson(Map<String, dynamic> json) =>
      _$$_GregorianMonthFromJson(json);

  @override
  @JsonKey()
  final int? number;
  @override
  @JsonKey()
  final String? en;

  @override
  String toString() {
    return 'GregorianMonth(number: $number, en: $en)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GregorianMonth &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, en);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GregorianMonthCopyWith<_$_GregorianMonth> get copyWith =>
      __$$_GregorianMonthCopyWithImpl<_$_GregorianMonth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GregorianMonthToJson(
      this,
    );
  }
}

abstract class _GregorianMonth implements GregorianMonth {
  const factory _GregorianMonth({final int? number, final String? en}) =
      _$_GregorianMonth;

  factory _GregorianMonth.fromJson(Map<String, dynamic> json) =
      _$_GregorianMonth.fromJson;

  @override
  int? get number;
  @override
  String? get en;
  @override
  @JsonKey(ignore: true)
  _$$_GregorianMonthCopyWith<_$_GregorianMonth> get copyWith =>
      throw _privateConstructorUsedError;
}
