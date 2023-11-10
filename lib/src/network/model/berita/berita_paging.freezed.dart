// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'berita_paging.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeritaPaging _$BeritaPagingFromJson(Map<String, dynamic> json) {
  return _BeritaPaging.fromJson(json);
}

/// @nodoc
mixin _$BeritaPaging {
  BeritaPages? get page => throw _privateConstructorUsedError;
  List<BeritaDetailDto>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeritaPagingCopyWith<BeritaPaging> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeritaPagingCopyWith<$Res> {
  factory $BeritaPagingCopyWith(
          BeritaPaging value, $Res Function(BeritaPaging) then) =
      _$BeritaPagingCopyWithImpl<$Res, BeritaPaging>;
  @useResult
  $Res call({BeritaPages? page, List<BeritaDetailDto>? data});

  $BeritaPagesCopyWith<$Res>? get page;
}

/// @nodoc
class _$BeritaPagingCopyWithImpl<$Res, $Val extends BeritaPaging>
    implements $BeritaPagingCopyWith<$Res> {
  _$BeritaPagingCopyWithImpl(this._value, this._then);

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
              as BeritaPages?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BeritaDetailDto>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BeritaPagesCopyWith<$Res>? get page {
    if (_value.page == null) {
      return null;
    }

    return $BeritaPagesCopyWith<$Res>(_value.page!, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BeritaPagingCopyWith<$Res>
    implements $BeritaPagingCopyWith<$Res> {
  factory _$$_BeritaPagingCopyWith(
          _$_BeritaPaging value, $Res Function(_$_BeritaPaging) then) =
      __$$_BeritaPagingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BeritaPages? page, List<BeritaDetailDto>? data});

  @override
  $BeritaPagesCopyWith<$Res>? get page;
}

/// @nodoc
class __$$_BeritaPagingCopyWithImpl<$Res>
    extends _$BeritaPagingCopyWithImpl<$Res, _$_BeritaPaging>
    implements _$$_BeritaPagingCopyWith<$Res> {
  __$$_BeritaPagingCopyWithImpl(
      _$_BeritaPaging _value, $Res Function(_$_BeritaPaging) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BeritaPaging(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as BeritaPages?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BeritaDetailDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BeritaPaging implements _BeritaPaging {
  _$_BeritaPaging({this.page, final List<BeritaDetailDto>? data})
      : _data = data;

  factory _$_BeritaPaging.fromJson(Map<String, dynamic> json) =>
      _$$_BeritaPagingFromJson(json);

  @override
  final BeritaPages? page;
  final List<BeritaDetailDto>? _data;
  @override
  List<BeritaDetailDto>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BeritaPaging(page: $page, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeritaPaging &&
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
  _$$_BeritaPagingCopyWith<_$_BeritaPaging> get copyWith =>
      __$$_BeritaPagingCopyWithImpl<_$_BeritaPaging>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeritaPagingToJson(
      this,
    );
  }
}

abstract class _BeritaPaging implements BeritaPaging {
  factory _BeritaPaging(
      {final BeritaPages? page,
      final List<BeritaDetailDto>? data}) = _$_BeritaPaging;

  factory _BeritaPaging.fromJson(Map<String, dynamic> json) =
      _$_BeritaPaging.fromJson;

  @override
  BeritaPages? get page;
  @override
  List<BeritaDetailDto>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_BeritaPagingCopyWith<_$_BeritaPaging> get copyWith =>
      throw _privateConstructorUsedError;
}
