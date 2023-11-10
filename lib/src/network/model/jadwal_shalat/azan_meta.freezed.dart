// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'azan_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AzanMeta _$AzanMetaFromJson(Map<String, dynamic> json) {
  return _AzanMeta.fromJson(json);
}

/// @nodoc
mixin _$AzanMeta {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  String? get latitudeAdjustmentMethod => throw _privateConstructorUsedError;
  String? get midnightMode => throw _privateConstructorUsedError;
  String? get school => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AzanMetaCopyWith<AzanMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AzanMetaCopyWith<$Res> {
  factory $AzanMetaCopyWith(AzanMeta value, $Res Function(AzanMeta) then) =
      _$AzanMetaCopyWithImpl<$Res, AzanMeta>;
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      String? timezone,
      String? latitudeAdjustmentMethod,
      String? midnightMode,
      String? school});
}

/// @nodoc
class _$AzanMetaCopyWithImpl<$Res, $Val extends AzanMeta>
    implements $AzanMetaCopyWith<$Res> {
  _$AzanMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? timezone = freezed,
    Object? latitudeAdjustmentMethod = freezed,
    Object? midnightMode = freezed,
    Object? school = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      latitudeAdjustmentMethod: freezed == latitudeAdjustmentMethod
          ? _value.latitudeAdjustmentMethod
          : latitudeAdjustmentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      midnightMode: freezed == midnightMode
          ? _value.midnightMode
          : midnightMode // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AzanMetaCopyWith<$Res> implements $AzanMetaCopyWith<$Res> {
  factory _$$_AzanMetaCopyWith(
          _$_AzanMeta value, $Res Function(_$_AzanMeta) then) =
      __$$_AzanMetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      String? timezone,
      String? latitudeAdjustmentMethod,
      String? midnightMode,
      String? school});
}

/// @nodoc
class __$$_AzanMetaCopyWithImpl<$Res>
    extends _$AzanMetaCopyWithImpl<$Res, _$_AzanMeta>
    implements _$$_AzanMetaCopyWith<$Res> {
  __$$_AzanMetaCopyWithImpl(
      _$_AzanMeta _value, $Res Function(_$_AzanMeta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? timezone = freezed,
    Object? latitudeAdjustmentMethod = freezed,
    Object? midnightMode = freezed,
    Object? school = freezed,
  }) {
    return _then(_$_AzanMeta(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      latitudeAdjustmentMethod: freezed == latitudeAdjustmentMethod
          ? _value.latitudeAdjustmentMethod
          : latitudeAdjustmentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      midnightMode: freezed == midnightMode
          ? _value.midnightMode
          : midnightMode // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AzanMeta implements _AzanMeta {
  const _$_AzanMeta(
      {this.latitude,
      this.longitude,
      this.timezone,
      this.latitudeAdjustmentMethod,
      this.midnightMode,
      this.school});

  factory _$_AzanMeta.fromJson(Map<String, dynamic> json) =>
      _$$_AzanMetaFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? timezone;
  @override
  final String? latitudeAdjustmentMethod;
  @override
  final String? midnightMode;
  @override
  final String? school;

  @override
  String toString() {
    return 'AzanMeta(latitude: $latitude, longitude: $longitude, timezone: $timezone, latitudeAdjustmentMethod: $latitudeAdjustmentMethod, midnightMode: $midnightMode, school: $school)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AzanMeta &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(
                    other.latitudeAdjustmentMethod, latitudeAdjustmentMethod) ||
                other.latitudeAdjustmentMethod == latitudeAdjustmentMethod) &&
            (identical(other.midnightMode, midnightMode) ||
                other.midnightMode == midnightMode) &&
            (identical(other.school, school) || other.school == school));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, timezone,
      latitudeAdjustmentMethod, midnightMode, school);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AzanMetaCopyWith<_$_AzanMeta> get copyWith =>
      __$$_AzanMetaCopyWithImpl<_$_AzanMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AzanMetaToJson(
      this,
    );
  }
}

abstract class _AzanMeta implements AzanMeta {
  const factory _AzanMeta(
      {final double? latitude,
      final double? longitude,
      final String? timezone,
      final String? latitudeAdjustmentMethod,
      final String? midnightMode,
      final String? school}) = _$_AzanMeta;

  factory _AzanMeta.fromJson(Map<String, dynamic> json) = _$_AzanMeta.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get timezone;
  @override
  String? get latitudeAdjustmentMethod;
  @override
  String? get midnightMode;
  @override
  String? get school;
  @override
  @JsonKey(ignore: true)
  _$$_AzanMetaCopyWith<_$_AzanMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
