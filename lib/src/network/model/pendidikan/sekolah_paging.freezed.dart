// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sekolah_paging.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SekolahPaging _$SekolahPagingFromJson(Map<String, dynamic> json) {
  return _SekolahPaging.fromJson(json);
}

/// @nodoc
mixin _$SekolahPaging {
  SekolahPage? get page => throw _privateConstructorUsedError;
  List<SekolahDetail>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SekolahPagingCopyWith<SekolahPaging> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SekolahPagingCopyWith<$Res> {
  factory $SekolahPagingCopyWith(
          SekolahPaging value, $Res Function(SekolahPaging) then) =
      _$SekolahPagingCopyWithImpl<$Res, SekolahPaging>;
  @useResult
  $Res call({SekolahPage? page, List<SekolahDetail>? data});

  $SekolahPageCopyWith<$Res>? get page;
}

/// @nodoc
class _$SekolahPagingCopyWithImpl<$Res, $Val extends SekolahPaging>
    implements $SekolahPagingCopyWith<$Res> {
  _$SekolahPagingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as SekolahPage?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SekolahDetail>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SekolahPageCopyWith<$Res>? get page {
    if (_value.page == null) {
      return null;
    }

    return $SekolahPageCopyWith<$Res>(_value.page!, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SekolahPagingCopyWith<$Res>
    implements $SekolahPagingCopyWith<$Res> {
  factory _$$_SekolahPagingCopyWith(
          _$_SekolahPaging value, $Res Function(_$_SekolahPaging) then) =
      __$$_SekolahPagingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SekolahPage? page, List<SekolahDetail>? data});

  @override
  $SekolahPageCopyWith<$Res>? get page;
}

/// @nodoc
class __$$_SekolahPagingCopyWithImpl<$Res>
    extends _$SekolahPagingCopyWithImpl<$Res, _$_SekolahPaging>
    implements _$$_SekolahPagingCopyWith<$Res> {
  __$$_SekolahPagingCopyWithImpl(
      _$_SekolahPaging _value, $Res Function(_$_SekolahPaging) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_SekolahPaging(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as SekolahPage?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SekolahDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SekolahPaging implements _SekolahPaging {
  _$_SekolahPaging({this.page, final List<SekolahDetail>? data}) : _data = data;

  factory _$_SekolahPaging.fromJson(Map<String, dynamic> json) =>
      _$$_SekolahPagingFromJson(json);

  @override
  final SekolahPage? page;
  final List<SekolahDetail>? _data;
  @override
  List<SekolahDetail>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SekolahPaging(page: $page, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SekolahPaging &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SekolahPagingCopyWith<_$_SekolahPaging> get copyWith =>
      __$$_SekolahPagingCopyWithImpl<_$_SekolahPaging>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SekolahPagingToJson(
      this,
    );
  }
}

abstract class _SekolahPaging implements SekolahPaging {
  factory _SekolahPaging(
      {final SekolahPage? page,
      final List<SekolahDetail>? data}) = _$_SekolahPaging;

  factory _SekolahPaging.fromJson(Map<String, dynamic> json) =
      _$_SekolahPaging.fromJson;

  @override
  SekolahPage? get page;
  @override
  List<SekolahDetail>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_SekolahPagingCopyWith<_$_SekolahPaging> get copyWith =>
      throw _privateConstructorUsedError;
}
