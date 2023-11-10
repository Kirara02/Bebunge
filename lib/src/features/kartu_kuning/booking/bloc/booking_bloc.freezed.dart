// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date) booking,
    required TResult Function(String code) checkBooking,
    required TResult Function(String code) showCodeDialog,
    required TResult Function() checkQuota,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date)? booking,
    TResult? Function(String code)? checkBooking,
    TResult? Function(String code)? showCodeDialog,
    TResult? Function()? checkQuota,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? booking,
    TResult Function(String code)? checkBooking,
    TResult Function(String code)? showCodeDialog,
    TResult Function()? checkQuota,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Booking value) booking,
    required TResult Function(_CheckBooking value) checkBooking,
    required TResult Function(_ShowCodeDialogState value) showCodeDialog,
    required TResult Function(_CheckQuota value) checkQuota,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Booking value)? booking,
    TResult? Function(_CheckBooking value)? checkBooking,
    TResult? Function(_ShowCodeDialogState value)? showCodeDialog,
    TResult? Function(_CheckQuota value)? checkQuota,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Booking value)? booking,
    TResult Function(_CheckBooking value)? checkBooking,
    TResult Function(_ShowCodeDialogState value)? showCodeDialog,
    TResult Function(_CheckQuota value)? checkQuota,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
          BookingEvent value, $Res Function(BookingEvent) then) =
      _$BookingEventCopyWithImpl<$Res, BookingEvent>;
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res, $Val extends BookingEvent>
    implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BookingCopyWith<$Res> {
  factory _$$_BookingCopyWith(
          _$_Booking value, $Res Function(_$_Booking) then) =
      __$$_BookingCopyWithImpl<$Res>;
  @useResult
  $Res call({String date});
}

/// @nodoc
class __$$_BookingCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$_Booking>
    implements _$$_BookingCopyWith<$Res> {
  __$$_BookingCopyWithImpl(_$_Booking _value, $Res Function(_$_Booking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_Booking(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Booking implements _Booking {
  const _$_Booking({required this.date});

  @override
  final String date;

  @override
  String toString() {
    return 'BookingEvent.booking(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Booking &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingCopyWith<_$_Booking> get copyWith =>
      __$$_BookingCopyWithImpl<_$_Booking>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date) booking,
    required TResult Function(String code) checkBooking,
    required TResult Function(String code) showCodeDialog,
    required TResult Function() checkQuota,
  }) {
    return booking(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date)? booking,
    TResult? Function(String code)? checkBooking,
    TResult? Function(String code)? showCodeDialog,
    TResult? Function()? checkQuota,
  }) {
    return booking?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? booking,
    TResult Function(String code)? checkBooking,
    TResult Function(String code)? showCodeDialog,
    TResult Function()? checkQuota,
    required TResult orElse(),
  }) {
    if (booking != null) {
      return booking(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Booking value) booking,
    required TResult Function(_CheckBooking value) checkBooking,
    required TResult Function(_ShowCodeDialogState value) showCodeDialog,
    required TResult Function(_CheckQuota value) checkQuota,
  }) {
    return booking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Booking value)? booking,
    TResult? Function(_CheckBooking value)? checkBooking,
    TResult? Function(_ShowCodeDialogState value)? showCodeDialog,
    TResult? Function(_CheckQuota value)? checkQuota,
  }) {
    return booking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Booking value)? booking,
    TResult Function(_CheckBooking value)? checkBooking,
    TResult Function(_ShowCodeDialogState value)? showCodeDialog,
    TResult Function(_CheckQuota value)? checkQuota,
    required TResult orElse(),
  }) {
    if (booking != null) {
      return booking(this);
    }
    return orElse();
  }
}

abstract class _Booking implements BookingEvent {
  const factory _Booking({required final String date}) = _$_Booking;

  String get date;
  @JsonKey(ignore: true)
  _$$_BookingCopyWith<_$_Booking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckBookingCopyWith<$Res> {
  factory _$$_CheckBookingCopyWith(
          _$_CheckBooking value, $Res Function(_$_CheckBooking) then) =
      __$$_CheckBookingCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$_CheckBookingCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$_CheckBooking>
    implements _$$_CheckBookingCopyWith<$Res> {
  __$$_CheckBookingCopyWithImpl(
      _$_CheckBooking _value, $Res Function(_$_CheckBooking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$_CheckBooking(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CheckBooking implements _CheckBooking {
  const _$_CheckBooking({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'BookingEvent.checkBooking(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckBooking &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckBookingCopyWith<_$_CheckBooking> get copyWith =>
      __$$_CheckBookingCopyWithImpl<_$_CheckBooking>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date) booking,
    required TResult Function(String code) checkBooking,
    required TResult Function(String code) showCodeDialog,
    required TResult Function() checkQuota,
  }) {
    return checkBooking(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date)? booking,
    TResult? Function(String code)? checkBooking,
    TResult? Function(String code)? showCodeDialog,
    TResult? Function()? checkQuota,
  }) {
    return checkBooking?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? booking,
    TResult Function(String code)? checkBooking,
    TResult Function(String code)? showCodeDialog,
    TResult Function()? checkQuota,
    required TResult orElse(),
  }) {
    if (checkBooking != null) {
      return checkBooking(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Booking value) booking,
    required TResult Function(_CheckBooking value) checkBooking,
    required TResult Function(_ShowCodeDialogState value) showCodeDialog,
    required TResult Function(_CheckQuota value) checkQuota,
  }) {
    return checkBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Booking value)? booking,
    TResult? Function(_CheckBooking value)? checkBooking,
    TResult? Function(_ShowCodeDialogState value)? showCodeDialog,
    TResult? Function(_CheckQuota value)? checkQuota,
  }) {
    return checkBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Booking value)? booking,
    TResult Function(_CheckBooking value)? checkBooking,
    TResult Function(_ShowCodeDialogState value)? showCodeDialog,
    TResult Function(_CheckQuota value)? checkQuota,
    required TResult orElse(),
  }) {
    if (checkBooking != null) {
      return checkBooking(this);
    }
    return orElse();
  }
}

abstract class _CheckBooking implements BookingEvent {
  const factory _CheckBooking({required final String code}) = _$_CheckBooking;

  String get code;
  @JsonKey(ignore: true)
  _$$_CheckBookingCopyWith<_$_CheckBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowCodeDialogStateCopyWith<$Res> {
  factory _$$_ShowCodeDialogStateCopyWith(_$_ShowCodeDialogState value,
          $Res Function(_$_ShowCodeDialogState) then) =
      __$$_ShowCodeDialogStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$_ShowCodeDialogStateCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$_ShowCodeDialogState>
    implements _$$_ShowCodeDialogStateCopyWith<$Res> {
  __$$_ShowCodeDialogStateCopyWithImpl(_$_ShowCodeDialogState _value,
      $Res Function(_$_ShowCodeDialogState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$_ShowCodeDialogState(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowCodeDialogState implements _ShowCodeDialogState {
  const _$_ShowCodeDialogState({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'BookingEvent.showCodeDialog(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowCodeDialogState &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowCodeDialogStateCopyWith<_$_ShowCodeDialogState> get copyWith =>
      __$$_ShowCodeDialogStateCopyWithImpl<_$_ShowCodeDialogState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date) booking,
    required TResult Function(String code) checkBooking,
    required TResult Function(String code) showCodeDialog,
    required TResult Function() checkQuota,
  }) {
    return showCodeDialog(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date)? booking,
    TResult? Function(String code)? checkBooking,
    TResult? Function(String code)? showCodeDialog,
    TResult? Function()? checkQuota,
  }) {
    return showCodeDialog?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? booking,
    TResult Function(String code)? checkBooking,
    TResult Function(String code)? showCodeDialog,
    TResult Function()? checkQuota,
    required TResult orElse(),
  }) {
    if (showCodeDialog != null) {
      return showCodeDialog(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Booking value) booking,
    required TResult Function(_CheckBooking value) checkBooking,
    required TResult Function(_ShowCodeDialogState value) showCodeDialog,
    required TResult Function(_CheckQuota value) checkQuota,
  }) {
    return showCodeDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Booking value)? booking,
    TResult? Function(_CheckBooking value)? checkBooking,
    TResult? Function(_ShowCodeDialogState value)? showCodeDialog,
    TResult? Function(_CheckQuota value)? checkQuota,
  }) {
    return showCodeDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Booking value)? booking,
    TResult Function(_CheckBooking value)? checkBooking,
    TResult Function(_ShowCodeDialogState value)? showCodeDialog,
    TResult Function(_CheckQuota value)? checkQuota,
    required TResult orElse(),
  }) {
    if (showCodeDialog != null) {
      return showCodeDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowCodeDialogState implements BookingEvent {
  const factory _ShowCodeDialogState({required final String code}) =
      _$_ShowCodeDialogState;

  String get code;
  @JsonKey(ignore: true)
  _$$_ShowCodeDialogStateCopyWith<_$_ShowCodeDialogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckQuotaCopyWith<$Res> {
  factory _$$_CheckQuotaCopyWith(
          _$_CheckQuota value, $Res Function(_$_CheckQuota) then) =
      __$$_CheckQuotaCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckQuotaCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$_CheckQuota>
    implements _$$_CheckQuotaCopyWith<$Res> {
  __$$_CheckQuotaCopyWithImpl(
      _$_CheckQuota _value, $Res Function(_$_CheckQuota) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckQuota implements _CheckQuota {
  const _$_CheckQuota();

  @override
  String toString() {
    return 'BookingEvent.checkQuota()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckQuota);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date) booking,
    required TResult Function(String code) checkBooking,
    required TResult Function(String code) showCodeDialog,
    required TResult Function() checkQuota,
  }) {
    return checkQuota();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date)? booking,
    TResult? Function(String code)? checkBooking,
    TResult? Function(String code)? showCodeDialog,
    TResult? Function()? checkQuota,
  }) {
    return checkQuota?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? booking,
    TResult Function(String code)? checkBooking,
    TResult Function(String code)? showCodeDialog,
    TResult Function()? checkQuota,
    required TResult orElse(),
  }) {
    if (checkQuota != null) {
      return checkQuota();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Booking value) booking,
    required TResult Function(_CheckBooking value) checkBooking,
    required TResult Function(_ShowCodeDialogState value) showCodeDialog,
    required TResult Function(_CheckQuota value) checkQuota,
  }) {
    return checkQuota(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Booking value)? booking,
    TResult? Function(_CheckBooking value)? checkBooking,
    TResult? Function(_ShowCodeDialogState value)? showCodeDialog,
    TResult? Function(_CheckQuota value)? checkQuota,
  }) {
    return checkQuota?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Booking value)? booking,
    TResult Function(_CheckBooking value)? checkBooking,
    TResult Function(_ShowCodeDialogState value)? showCodeDialog,
    TResult Function(_CheckQuota value)? checkQuota,
    required TResult orElse(),
  }) {
    if (checkQuota != null) {
      return checkQuota(this);
    }
    return orElse();
  }
}

abstract class _CheckQuota implements BookingEvent {
  const factory _CheckQuota() = _$_CheckQuota;
}

/// @nodoc
mixin _$BookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookingMod data) success,
    required TResult Function(QuotaMod data) quotaSuccess,
    required TResult Function(NetworkExceptions error) error,
    required TResult Function(String code) showCodeDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookingMod data)? success,
    TResult? Function(QuotaMod data)? quotaSuccess,
    TResult? Function(NetworkExceptions error)? error,
    TResult? Function(String code)? showCodeDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookingMod data)? success,
    TResult Function(QuotaMod data)? quotaSuccess,
    TResult Function(NetworkExceptions error)? error,
    TResult Function(String code)? showCodeDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_QuotaSuccess value) quotaSuccess,
    required TResult Function(_Error value) error,
    required TResult Function(_ShowCodeDialog value) showCodeDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_QuotaSuccess value)? quotaSuccess,
    TResult? Function(_Error value)? error,
    TResult? Function(_ShowCodeDialog value)? showCodeDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_QuotaSuccess value)? quotaSuccess,
    TResult Function(_Error value)? error,
    TResult Function(_ShowCodeDialog value)? showCodeDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BookingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookingMod data) success,
    required TResult Function(QuotaMod data) quotaSuccess,
    required TResult Function(NetworkExceptions error) error,
    required TResult Function(String code) showCodeDialog,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookingMod data)? success,
    TResult? Function(QuotaMod data)? quotaSuccess,
    TResult? Function(NetworkExceptions error)? error,
    TResult? Function(String code)? showCodeDialog,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookingMod data)? success,
    TResult Function(QuotaMod data)? quotaSuccess,
    TResult Function(NetworkExceptions error)? error,
    TResult Function(String code)? showCodeDialog,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_QuotaSuccess value) quotaSuccess,
    required TResult Function(_Error value) error,
    required TResult Function(_ShowCodeDialog value) showCodeDialog,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_QuotaSuccess value)? quotaSuccess,
    TResult? Function(_Error value)? error,
    TResult? Function(_ShowCodeDialog value)? showCodeDialog,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_QuotaSuccess value)? quotaSuccess,
    TResult Function(_Error value)? error,
    TResult Function(_ShowCodeDialog value)? showCodeDialog,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BookingState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'BookingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookingMod data) success,
    required TResult Function(QuotaMod data) quotaSuccess,
    required TResult Function(NetworkExceptions error) error,
    required TResult Function(String code) showCodeDialog,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookingMod data)? success,
    TResult? Function(QuotaMod data)? quotaSuccess,
    TResult? Function(NetworkExceptions error)? error,
    TResult? Function(String code)? showCodeDialog,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookingMod data)? success,
    TResult Function(QuotaMod data)? quotaSuccess,
    TResult Function(NetworkExceptions error)? error,
    TResult Function(String code)? showCodeDialog,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_QuotaSuccess value) quotaSuccess,
    required TResult Function(_Error value) error,
    required TResult Function(_ShowCodeDialog value) showCodeDialog,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_QuotaSuccess value)? quotaSuccess,
    TResult? Function(_Error value)? error,
    TResult? Function(_ShowCodeDialog value)? showCodeDialog,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_QuotaSuccess value)? quotaSuccess,
    TResult Function(_Error value)? error,
    TResult Function(_ShowCodeDialog value)? showCodeDialog,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BookingState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({BookingMod data});

  $BookingModCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Success(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingMod,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingModCopyWith<$Res> get data {
    return $BookingModCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.data);

  @override
  final BookingMod data;

  @override
  String toString() {
    return 'BookingState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookingMod data) success,
    required TResult Function(QuotaMod data) quotaSuccess,
    required TResult Function(NetworkExceptions error) error,
    required TResult Function(String code) showCodeDialog,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookingMod data)? success,
    TResult? Function(QuotaMod data)? quotaSuccess,
    TResult? Function(NetworkExceptions error)? error,
    TResult? Function(String code)? showCodeDialog,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookingMod data)? success,
    TResult Function(QuotaMod data)? quotaSuccess,
    TResult Function(NetworkExceptions error)? error,
    TResult Function(String code)? showCodeDialog,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_QuotaSuccess value) quotaSuccess,
    required TResult Function(_Error value) error,
    required TResult Function(_ShowCodeDialog value) showCodeDialog,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_QuotaSuccess value)? quotaSuccess,
    TResult? Function(_Error value)? error,
    TResult? Function(_ShowCodeDialog value)? showCodeDialog,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_QuotaSuccess value)? quotaSuccess,
    TResult Function(_Error value)? error,
    TResult Function(_ShowCodeDialog value)? showCodeDialog,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements BookingState {
  const factory _Success(final BookingMod data) = _$_Success;

  BookingMod get data;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuotaSuccessCopyWith<$Res> {
  factory _$$_QuotaSuccessCopyWith(
          _$_QuotaSuccess value, $Res Function(_$_QuotaSuccess) then) =
      __$$_QuotaSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({QuotaMod data});

  $QuotaModCopyWith<$Res> get data;
}

/// @nodoc
class __$$_QuotaSuccessCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$_QuotaSuccess>
    implements _$$_QuotaSuccessCopyWith<$Res> {
  __$$_QuotaSuccessCopyWithImpl(
      _$_QuotaSuccess _value, $Res Function(_$_QuotaSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_QuotaSuccess(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QuotaMod,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuotaModCopyWith<$Res> get data {
    return $QuotaModCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_QuotaSuccess implements _QuotaSuccess {
  const _$_QuotaSuccess(this.data);

  @override
  final QuotaMod data;

  @override
  String toString() {
    return 'BookingState.quotaSuccess(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuotaSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuotaSuccessCopyWith<_$_QuotaSuccess> get copyWith =>
      __$$_QuotaSuccessCopyWithImpl<_$_QuotaSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookingMod data) success,
    required TResult Function(QuotaMod data) quotaSuccess,
    required TResult Function(NetworkExceptions error) error,
    required TResult Function(String code) showCodeDialog,
  }) {
    return quotaSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookingMod data)? success,
    TResult? Function(QuotaMod data)? quotaSuccess,
    TResult? Function(NetworkExceptions error)? error,
    TResult? Function(String code)? showCodeDialog,
  }) {
    return quotaSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookingMod data)? success,
    TResult Function(QuotaMod data)? quotaSuccess,
    TResult Function(NetworkExceptions error)? error,
    TResult Function(String code)? showCodeDialog,
    required TResult orElse(),
  }) {
    if (quotaSuccess != null) {
      return quotaSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_QuotaSuccess value) quotaSuccess,
    required TResult Function(_Error value) error,
    required TResult Function(_ShowCodeDialog value) showCodeDialog,
  }) {
    return quotaSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_QuotaSuccess value)? quotaSuccess,
    TResult? Function(_Error value)? error,
    TResult? Function(_ShowCodeDialog value)? showCodeDialog,
  }) {
    return quotaSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_QuotaSuccess value)? quotaSuccess,
    TResult Function(_Error value)? error,
    TResult Function(_ShowCodeDialog value)? showCodeDialog,
    required TResult orElse(),
  }) {
    if (quotaSuccess != null) {
      return quotaSuccess(this);
    }
    return orElse();
  }
}

abstract class _QuotaSuccess implements BookingState {
  const factory _QuotaSuccess(final QuotaMod data) = _$_QuotaSuccess;

  QuotaMod get data;
  @JsonKey(ignore: true)
  _$$_QuotaSuccessCopyWith<_$_QuotaSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkExceptions error});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res> get error {
    return $NetworkExceptionsCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final NetworkExceptions error;

  @override
  String toString() {
    return 'BookingState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookingMod data) success,
    required TResult Function(QuotaMod data) quotaSuccess,
    required TResult Function(NetworkExceptions error) error,
    required TResult Function(String code) showCodeDialog,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookingMod data)? success,
    TResult? Function(QuotaMod data)? quotaSuccess,
    TResult? Function(NetworkExceptions error)? error,
    TResult? Function(String code)? showCodeDialog,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookingMod data)? success,
    TResult Function(QuotaMod data)? quotaSuccess,
    TResult Function(NetworkExceptions error)? error,
    TResult Function(String code)? showCodeDialog,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_QuotaSuccess value) quotaSuccess,
    required TResult Function(_Error value) error,
    required TResult Function(_ShowCodeDialog value) showCodeDialog,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_QuotaSuccess value)? quotaSuccess,
    TResult? Function(_Error value)? error,
    TResult? Function(_ShowCodeDialog value)? showCodeDialog,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_QuotaSuccess value)? quotaSuccess,
    TResult Function(_Error value)? error,
    TResult Function(_ShowCodeDialog value)? showCodeDialog,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BookingState {
  const factory _Error(final NetworkExceptions error) = _$_Error;

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShowCodeDialogCopyWith<$Res> {
  factory _$$_ShowCodeDialogCopyWith(
          _$_ShowCodeDialog value, $Res Function(_$_ShowCodeDialog) then) =
      __$$_ShowCodeDialogCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$_ShowCodeDialogCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$_ShowCodeDialog>
    implements _$$_ShowCodeDialogCopyWith<$Res> {
  __$$_ShowCodeDialogCopyWithImpl(
      _$_ShowCodeDialog _value, $Res Function(_$_ShowCodeDialog) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$_ShowCodeDialog(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowCodeDialog implements _ShowCodeDialog {
  const _$_ShowCodeDialog(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'BookingState.showCodeDialog(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowCodeDialog &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowCodeDialogCopyWith<_$_ShowCodeDialog> get copyWith =>
      __$$_ShowCodeDialogCopyWithImpl<_$_ShowCodeDialog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BookingMod data) success,
    required TResult Function(QuotaMod data) quotaSuccess,
    required TResult Function(NetworkExceptions error) error,
    required TResult Function(String code) showCodeDialog,
  }) {
    return showCodeDialog(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BookingMod data)? success,
    TResult? Function(QuotaMod data)? quotaSuccess,
    TResult? Function(NetworkExceptions error)? error,
    TResult? Function(String code)? showCodeDialog,
  }) {
    return showCodeDialog?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BookingMod data)? success,
    TResult Function(QuotaMod data)? quotaSuccess,
    TResult Function(NetworkExceptions error)? error,
    TResult Function(String code)? showCodeDialog,
    required TResult orElse(),
  }) {
    if (showCodeDialog != null) {
      return showCodeDialog(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_QuotaSuccess value) quotaSuccess,
    required TResult Function(_Error value) error,
    required TResult Function(_ShowCodeDialog value) showCodeDialog,
  }) {
    return showCodeDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_QuotaSuccess value)? quotaSuccess,
    TResult? Function(_Error value)? error,
    TResult? Function(_ShowCodeDialog value)? showCodeDialog,
  }) {
    return showCodeDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_QuotaSuccess value)? quotaSuccess,
    TResult Function(_Error value)? error,
    TResult Function(_ShowCodeDialog value)? showCodeDialog,
    required TResult orElse(),
  }) {
    if (showCodeDialog != null) {
      return showCodeDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowCodeDialog implements BookingState {
  const factory _ShowCodeDialog(final String code) = _$_ShowCodeDialog;

  String get code;
  @JsonKey(ignore: true)
  _$$_ShowCodeDialogCopyWith<_$_ShowCodeDialog> get copyWith =>
      throw _privateConstructorUsedError;
}
