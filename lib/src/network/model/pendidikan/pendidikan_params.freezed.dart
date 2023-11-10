// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pendidikan_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PendidikanParams _$PendidikanParamsFromJson(Map<String, dynamic> json) {
  return _PendidikanParams.fromJson(json);
}

/// @nodoc
mixin _$PendidikanParams {
  String? get search => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PendidikanParamsCopyWith<PendidikanParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendidikanParamsCopyWith<$Res> {
  factory $PendidikanParamsCopyWith(
          PendidikanParams value, $Res Function(PendidikanParams) then) =
      _$PendidikanParamsCopyWithImpl<$Res, PendidikanParams>;
  @useResult
  $Res call({String? search, String? category, String? page});
}

/// @nodoc
class _$PendidikanParamsCopyWithImpl<$Res, $Val extends PendidikanParams>
    implements $PendidikanParamsCopyWith<$Res> {
  _$PendidikanParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? category = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PendidikanParamsCopyWith<$Res>
    implements $PendidikanParamsCopyWith<$Res> {
  factory _$$_PendidikanParamsCopyWith(
          _$_PendidikanParams value, $Res Function(_$_PendidikanParams) then) =
      __$$_PendidikanParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? search, String? category, String? page});
}

/// @nodoc
class __$$_PendidikanParamsCopyWithImpl<$Res>
    extends _$PendidikanParamsCopyWithImpl<$Res, _$_PendidikanParams>
    implements _$$_PendidikanParamsCopyWith<$Res> {
  __$$_PendidikanParamsCopyWithImpl(
      _$_PendidikanParams _value, $Res Function(_$_PendidikanParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
    Object? category = freezed,
    Object? page = freezed,
  }) {
    return _then(_$_PendidikanParams(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PendidikanParams implements _PendidikanParams {
  _$_PendidikanParams({this.search, this.category, this.page});

  factory _$_PendidikanParams.fromJson(Map<String, dynamic> json) =>
      _$$_PendidikanParamsFromJson(json);

  @override
  final String? search;
  @override
  final String? category;
  @override
  final String? page;

  @override
  String toString() {
    return 'PendidikanParams(search: $search, category: $category, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PendidikanParams &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, search, category, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PendidikanParamsCopyWith<_$_PendidikanParams> get copyWith =>
      __$$_PendidikanParamsCopyWithImpl<_$_PendidikanParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PendidikanParamsToJson(
      this,
    );
  }
}

abstract class _PendidikanParams implements PendidikanParams {
  factory _PendidikanParams(
      {final String? search,
      final String? category,
      final String? page}) = _$_PendidikanParams;

  factory _PendidikanParams.fromJson(Map<String, dynamic> json) =
      _$_PendidikanParams.fromJson;

  @override
  String? get search;
  @override
  String? get category;
  @override
  String? get page;
  @override
  @JsonKey(ignore: true)
  _$$_PendidikanParamsCopyWith<_$_PendidikanParams> get copyWith =>
      throw _privateConstructorUsedError;
}
