// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingMod _$BookingModFromJson(Map<String, dynamic> json) {
  return _BookingMod.fromJson(json);
}

/// @nodoc
mixin _$BookingMod {
  bool get success => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingModCopyWith<BookingMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingModCopyWith<$Res> {
  factory $BookingModCopyWith(
          BookingMod value, $Res Function(BookingMod) then) =
      _$BookingModCopyWithImpl<$Res, BookingMod>;
  @useResult
  $Res call({bool success, String? data, String? date, String message});
}

/// @nodoc
class _$BookingModCopyWithImpl<$Res, $Val extends BookingMod>
    implements $BookingModCopyWith<$Res> {
  _$BookingModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? date = freezed,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookingModCopyWith<$Res>
    implements $BookingModCopyWith<$Res> {
  factory _$$_BookingModCopyWith(
          _$_BookingMod value, $Res Function(_$_BookingMod) then) =
      __$$_BookingModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? data, String? date, String message});
}

/// @nodoc
class __$$_BookingModCopyWithImpl<$Res>
    extends _$BookingModCopyWithImpl<$Res, _$_BookingMod>
    implements _$$_BookingModCopyWith<$Res> {
  __$$_BookingModCopyWithImpl(
      _$_BookingMod _value, $Res Function(_$_BookingMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? date = freezed,
    Object? message = null,
  }) {
    return _then(_$_BookingMod(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookingMod implements _BookingMod {
  const _$_BookingMod(
      {required this.success, this.data, this.date, required this.message});

  factory _$_BookingMod.fromJson(Map<String, dynamic> json) =>
      _$$_BookingModFromJson(json);

  @override
  final bool success;
  @override
  final String? data;
  @override
  final String? date;
  @override
  final String message;

  @override
  String toString() {
    return 'BookingMod(success: $success, data: $data, date: $date, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingMod &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, date, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingModCopyWith<_$_BookingMod> get copyWith =>
      __$$_BookingModCopyWithImpl<_$_BookingMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookingModToJson(
      this,
    );
  }
}

abstract class _BookingMod implements BookingMod {
  const factory _BookingMod(
      {required final bool success,
      final String? data,
      final String? date,
      required final String message}) = _$_BookingMod;

  factory _BookingMod.fromJson(Map<String, dynamic> json) =
      _$_BookingMod.fromJson;

  @override
  bool get success;
  @override
  String? get data;
  @override
  String? get date;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_BookingModCopyWith<_$_BookingMod> get copyWith =>
      throw _privateConstructorUsedError;
}
