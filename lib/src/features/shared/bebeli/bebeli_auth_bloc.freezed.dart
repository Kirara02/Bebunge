// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bebeli_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BebeliAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? user, String? pass) userLogin,
    required TResult Function() userLogout,
    required TResult Function() checkStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? user, String? pass)? userLogin,
    TResult? Function()? userLogout,
    TResult? Function()? checkStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? user, String? pass)? userLogin,
    TResult Function()? userLogout,
    TResult Function()? checkStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserLogout value) userLogout,
    required TResult Function(_CheckStatus value) checkStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserLogout value)? userLogout,
    TResult? Function(_CheckStatus value)? checkStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserLogout value)? userLogout,
    TResult Function(_CheckStatus value)? checkStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BebeliAuthEventCopyWith<$Res> {
  factory $BebeliAuthEventCopyWith(
          BebeliAuthEvent value, $Res Function(BebeliAuthEvent) then) =
      _$BebeliAuthEventCopyWithImpl<$Res, BebeliAuthEvent>;
}

/// @nodoc
class _$BebeliAuthEventCopyWithImpl<$Res, $Val extends BebeliAuthEvent>
    implements $BebeliAuthEventCopyWith<$Res> {
  _$BebeliAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserLoginCopyWith<$Res> {
  factory _$$_UserLoginCopyWith(
          _$_UserLogin value, $Res Function(_$_UserLogin) then) =
      __$$_UserLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String? user, String? pass});
}

/// @nodoc
class __$$_UserLoginCopyWithImpl<$Res>
    extends _$BebeliAuthEventCopyWithImpl<$Res, _$_UserLogin>
    implements _$$_UserLoginCopyWith<$Res> {
  __$$_UserLoginCopyWithImpl(
      _$_UserLogin _value, $Res Function(_$_UserLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? pass = freezed,
  }) {
    return _then(_$_UserLogin(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      pass: freezed == pass
          ? _value.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserLogin implements _UserLogin {
  const _$_UserLogin({this.user, this.pass});

  @override
  final String? user;
  @override
  final String? pass;

  @override
  String toString() {
    return 'BebeliAuthEvent.userLogin(user: $user, pass: $pass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLogin &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.pass, pass) || other.pass == pass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, pass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserLoginCopyWith<_$_UserLogin> get copyWith =>
      __$$_UserLoginCopyWithImpl<_$_UserLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? user, String? pass) userLogin,
    required TResult Function() userLogout,
    required TResult Function() checkStatus,
  }) {
    return userLogin(user, pass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? user, String? pass)? userLogin,
    TResult? Function()? userLogout,
    TResult? Function()? checkStatus,
  }) {
    return userLogin?.call(user, pass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? user, String? pass)? userLogin,
    TResult Function()? userLogout,
    TResult Function()? checkStatus,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin(user, pass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserLogout value) userLogout,
    required TResult Function(_CheckStatus value) checkStatus,
  }) {
    return userLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserLogout value)? userLogout,
    TResult? Function(_CheckStatus value)? checkStatus,
  }) {
    return userLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserLogout value)? userLogout,
    TResult Function(_CheckStatus value)? checkStatus,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin(this);
    }
    return orElse();
  }
}

abstract class _UserLogin implements BebeliAuthEvent {
  const factory _UserLogin({final String? user, final String? pass}) =
      _$_UserLogin;

  String? get user;
  String? get pass;
  @JsonKey(ignore: true)
  _$$_UserLoginCopyWith<_$_UserLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserLogoutCopyWith<$Res> {
  factory _$$_UserLogoutCopyWith(
          _$_UserLogout value, $Res Function(_$_UserLogout) then) =
      __$$_UserLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserLogoutCopyWithImpl<$Res>
    extends _$BebeliAuthEventCopyWithImpl<$Res, _$_UserLogout>
    implements _$$_UserLogoutCopyWith<$Res> {
  __$$_UserLogoutCopyWithImpl(
      _$_UserLogout _value, $Res Function(_$_UserLogout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserLogout implements _UserLogout {
  const _$_UserLogout();

  @override
  String toString() {
    return 'BebeliAuthEvent.userLogout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? user, String? pass) userLogin,
    required TResult Function() userLogout,
    required TResult Function() checkStatus,
  }) {
    return userLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? user, String? pass)? userLogin,
    TResult? Function()? userLogout,
    TResult? Function()? checkStatus,
  }) {
    return userLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? user, String? pass)? userLogin,
    TResult Function()? userLogout,
    TResult Function()? checkStatus,
    required TResult orElse(),
  }) {
    if (userLogout != null) {
      return userLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserLogout value) userLogout,
    required TResult Function(_CheckStatus value) checkStatus,
  }) {
    return userLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserLogout value)? userLogout,
    TResult? Function(_CheckStatus value)? checkStatus,
  }) {
    return userLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserLogout value)? userLogout,
    TResult Function(_CheckStatus value)? checkStatus,
    required TResult orElse(),
  }) {
    if (userLogout != null) {
      return userLogout(this);
    }
    return orElse();
  }
}

abstract class _UserLogout implements BebeliAuthEvent {
  const factory _UserLogout() = _$_UserLogout;
}

/// @nodoc
abstract class _$$_CheckStatusCopyWith<$Res> {
  factory _$$_CheckStatusCopyWith(
          _$_CheckStatus value, $Res Function(_$_CheckStatus) then) =
      __$$_CheckStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckStatusCopyWithImpl<$Res>
    extends _$BebeliAuthEventCopyWithImpl<$Res, _$_CheckStatus>
    implements _$$_CheckStatusCopyWith<$Res> {
  __$$_CheckStatusCopyWithImpl(
      _$_CheckStatus _value, $Res Function(_$_CheckStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckStatus implements _CheckStatus {
  const _$_CheckStatus();

  @override
  String toString() {
    return 'BebeliAuthEvent.checkStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? user, String? pass) userLogin,
    required TResult Function() userLogout,
    required TResult Function() checkStatus,
  }) {
    return checkStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? user, String? pass)? userLogin,
    TResult? Function()? userLogout,
    TResult? Function()? checkStatus,
  }) {
    return checkStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? user, String? pass)? userLogin,
    TResult Function()? userLogout,
    TResult Function()? checkStatus,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserLogin value) userLogin,
    required TResult Function(_UserLogout value) userLogout,
    required TResult Function(_CheckStatus value) checkStatus,
  }) {
    return checkStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserLogin value)? userLogin,
    TResult? Function(_UserLogout value)? userLogout,
    TResult? Function(_CheckStatus value)? checkStatus,
  }) {
    return checkStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserLogin value)? userLogin,
    TResult Function(_UserLogout value)? userLogout,
    TResult Function(_CheckStatus value)? checkStatus,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckStatus implements BebeliAuthEvent {
  const factory _CheckStatus() = _$_CheckStatus;
}

/// @nodoc
mixin _$BebeliAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BebeliMember data) isAuthenticated,
    required TResult Function() unAutheticated,
    required TResult Function(NetworkExceptions error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BebeliMember data)? isAuthenticated,
    TResult? Function()? unAutheticated,
    TResult? Function(NetworkExceptions error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BebeliMember data)? isAuthenticated,
    TResult Function()? unAutheticated,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAutheticated,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAutheticated,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAutheticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BebeliAuthStateCopyWith<$Res> {
  factory $BebeliAuthStateCopyWith(
          BebeliAuthState value, $Res Function(BebeliAuthState) then) =
      _$BebeliAuthStateCopyWithImpl<$Res, BebeliAuthState>;
}

/// @nodoc
class _$BebeliAuthStateCopyWithImpl<$Res, $Val extends BebeliAuthState>
    implements $BebeliAuthStateCopyWith<$Res> {
  _$BebeliAuthStateCopyWithImpl(this._value, this._then);

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
    extends _$BebeliAuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BebeliAuthState.initial()';
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
    required TResult Function(BebeliMember data) isAuthenticated,
    required TResult Function() unAutheticated,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BebeliMember data)? isAuthenticated,
    TResult? Function()? unAutheticated,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BebeliMember data)? isAuthenticated,
    TResult Function()? unAutheticated,
    TResult Function(NetworkExceptions error)? error,
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
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAutheticated,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAutheticated,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAutheticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BebeliAuthState {
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
    extends _$BebeliAuthStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'BebeliAuthState.loading()';
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
    required TResult Function(BebeliMember data) isAuthenticated,
    required TResult Function() unAutheticated,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BebeliMember data)? isAuthenticated,
    TResult? Function()? unAutheticated,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BebeliMember data)? isAuthenticated,
    TResult Function()? unAutheticated,
    TResult Function(NetworkExceptions error)? error,
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
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAutheticated,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAutheticated,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAutheticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BebeliAuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_IsAuthenticatedCopyWith<$Res> {
  factory _$$_IsAuthenticatedCopyWith(
          _$_IsAuthenticated value, $Res Function(_$_IsAuthenticated) then) =
      __$$_IsAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({BebeliMember data});

  $BebeliMemberCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IsAuthenticatedCopyWithImpl<$Res>
    extends _$BebeliAuthStateCopyWithImpl<$Res, _$_IsAuthenticated>
    implements _$$_IsAuthenticatedCopyWith<$Res> {
  __$$_IsAuthenticatedCopyWithImpl(
      _$_IsAuthenticated _value, $Res Function(_$_IsAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_IsAuthenticated(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BebeliMember,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BebeliMemberCopyWith<$Res> get data {
    return $BebeliMemberCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_IsAuthenticated implements _IsAuthenticated {
  const _$_IsAuthenticated(this.data);

  @override
  final BebeliMember data;

  @override
  String toString() {
    return 'BebeliAuthState.isAuthenticated(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsAuthenticated &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsAuthenticatedCopyWith<_$_IsAuthenticated> get copyWith =>
      __$$_IsAuthenticatedCopyWithImpl<_$_IsAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BebeliMember data) isAuthenticated,
    required TResult Function() unAutheticated,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return isAuthenticated(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BebeliMember data)? isAuthenticated,
    TResult? Function()? unAutheticated,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return isAuthenticated?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BebeliMember data)? isAuthenticated,
    TResult Function()? unAutheticated,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (isAuthenticated != null) {
      return isAuthenticated(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAutheticated,
    required TResult Function(_Error value) error,
  }) {
    return isAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAutheticated,
    TResult? Function(_Error value)? error,
  }) {
    return isAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAutheticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (isAuthenticated != null) {
      return isAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _IsAuthenticated implements BebeliAuthState {
  const factory _IsAuthenticated(final BebeliMember data) = _$_IsAuthenticated;

  BebeliMember get data;
  @JsonKey(ignore: true)
  _$$_IsAuthenticatedCopyWith<_$_IsAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnAuthenticatedCopyWith<$Res> {
  factory _$$_UnAuthenticatedCopyWith(
          _$_UnAuthenticated value, $Res Function(_$_UnAuthenticated) then) =
      __$$_UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnAuthenticatedCopyWithImpl<$Res>
    extends _$BebeliAuthStateCopyWithImpl<$Res, _$_UnAuthenticated>
    implements _$$_UnAuthenticatedCopyWith<$Res> {
  __$$_UnAuthenticatedCopyWithImpl(
      _$_UnAuthenticated _value, $Res Function(_$_UnAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnAuthenticated implements _UnAuthenticated {
  const _$_UnAuthenticated();

  @override
  String toString() {
    return 'BebeliAuthState.unAutheticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BebeliMember data) isAuthenticated,
    required TResult Function() unAutheticated,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return unAutheticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BebeliMember data)? isAuthenticated,
    TResult? Function()? unAutheticated,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return unAutheticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BebeliMember data)? isAuthenticated,
    TResult Function()? unAutheticated,
    TResult Function(NetworkExceptions error)? error,
    required TResult orElse(),
  }) {
    if (unAutheticated != null) {
      return unAutheticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAutheticated,
    required TResult Function(_Error value) error,
  }) {
    return unAutheticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAutheticated,
    TResult? Function(_Error value)? error,
  }) {
    return unAutheticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAutheticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unAutheticated != null) {
      return unAutheticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements BebeliAuthState {
  const factory _UnAuthenticated() = _$_UnAuthenticated;
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
    extends _$BebeliAuthStateCopyWithImpl<$Res, _$_Error>
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
    return 'BebeliAuthState.error(error: $error)';
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
    required TResult Function(BebeliMember data) isAuthenticated,
    required TResult Function() unAutheticated,
    required TResult Function(NetworkExceptions error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BebeliMember data)? isAuthenticated,
    TResult? Function()? unAutheticated,
    TResult? Function(NetworkExceptions error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BebeliMember data)? isAuthenticated,
    TResult Function()? unAutheticated,
    TResult Function(NetworkExceptions error)? error,
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
    required TResult Function(_IsAuthenticated value) isAuthenticated,
    required TResult Function(_UnAuthenticated value) unAutheticated,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_IsAuthenticated value)? isAuthenticated,
    TResult? Function(_UnAuthenticated value)? unAutheticated,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_IsAuthenticated value)? isAuthenticated,
    TResult Function(_UnAuthenticated value)? unAutheticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BebeliAuthState {
  const factory _Error(final NetworkExceptions error) = _$_Error;

  NetworkExceptions get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
