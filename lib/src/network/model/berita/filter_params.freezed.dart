// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterParams _$FilterParamsFromJson(Map<String, dynamic> json) {
  return _FilterParams.fromJson(json);
}

/// @nodoc
mixin _$FilterParams {
  String? get kategori => throw _privateConstructorUsedError;
  String? get limit => throw _privateConstructorUsedError;
  String? get page => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterParamsCopyWith<FilterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterParamsCopyWith<$Res> {
  factory $FilterParamsCopyWith(
          FilterParams value, $Res Function(FilterParams) then) =
      _$FilterParamsCopyWithImpl<$Res, FilterParams>;
  @useResult
  $Res call({String? kategori, String? limit, String? page, String? search});
}

/// @nodoc
class _$FilterParamsCopyWithImpl<$Res, $Val extends FilterParams>
    implements $FilterParamsCopyWith<$Res> {
  _$FilterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kategori = freezed,
    Object? limit = freezed,
    Object? page = freezed,
    Object? search = freezed,
  }) {
    return _then(_value.copyWith(
      kategori: freezed == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterParamsCopyWith<$Res>
    implements $FilterParamsCopyWith<$Res> {
  factory _$$_FilterParamsCopyWith(
          _$_FilterParams value, $Res Function(_$_FilterParams) then) =
      __$$_FilterParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? kategori, String? limit, String? page, String? search});
}

/// @nodoc
class __$$_FilterParamsCopyWithImpl<$Res>
    extends _$FilterParamsCopyWithImpl<$Res, _$_FilterParams>
    implements _$$_FilterParamsCopyWith<$Res> {
  __$$_FilterParamsCopyWithImpl(
      _$_FilterParams _value, $Res Function(_$_FilterParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kategori = freezed,
    Object? limit = freezed,
    Object? page = freezed,
    Object? search = freezed,
  }) {
    return _then(_$_FilterParams(
      kategori: freezed == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterParams implements _FilterParams {
  const _$_FilterParams({this.kategori, this.limit, this.page, this.search});

  factory _$_FilterParams.fromJson(Map<String, dynamic> json) =>
      _$$_FilterParamsFromJson(json);

  @override
  final String? kategori;
  @override
  final String? limit;
  @override
  final String? page;
  @override
  final String? search;

  @override
  String toString() {
    return 'FilterParams(kategori: $kategori, limit: $limit, page: $page, search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterParams &&
            (identical(other.kategori, kategori) ||
                other.kategori == kategori) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.search, search) || other.search == search));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kategori, limit, page, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterParamsCopyWith<_$_FilterParams> get copyWith =>
      __$$_FilterParamsCopyWithImpl<_$_FilterParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterParamsToJson(
      this,
    );
  }
}

abstract class _FilterParams implements FilterParams {
  const factory _FilterParams(
      {final String? kategori,
      final String? limit,
      final String? page,
      final String? search}) = _$_FilterParams;

  factory _FilterParams.fromJson(Map<String, dynamic> json) =
      _$_FilterParams.fromJson;

  @override
  String? get kategori;
  @override
  String? get limit;
  @override
  String? get page;
  @override
  String? get search;
  @override
  @JsonKey(ignore: true)
  _$$_FilterParamsCopyWith<_$_FilterParams> get copyWith =>
      throw _privateConstructorUsedError;
}
