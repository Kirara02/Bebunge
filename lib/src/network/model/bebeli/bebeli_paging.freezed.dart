// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bebeli_paging.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BebeliPaging _$BebeliPagingFromJson(Map<String, dynamic> json) {
  return _BebeliPaging.fromJson(json);
}

/// @nodoc
mixin _$BebeliPaging {
  BebeliPage? get page => throw _privateConstructorUsedError;
  List<BebeliProduct>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BebeliPagingCopyWith<BebeliPaging> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BebeliPagingCopyWith<$Res> {
  factory $BebeliPagingCopyWith(
          BebeliPaging value, $Res Function(BebeliPaging) then) =
      _$BebeliPagingCopyWithImpl<$Res, BebeliPaging>;
  @useResult
  $Res call({BebeliPage? page, List<BebeliProduct>? data});

  $BebeliPageCopyWith<$Res>? get page;
}

/// @nodoc
class _$BebeliPagingCopyWithImpl<$Res, $Val extends BebeliPaging>
    implements $BebeliPagingCopyWith<$Res> {
  _$BebeliPagingCopyWithImpl(this._value, this._then);

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
              as BebeliPage?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BebeliProduct>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BebeliPageCopyWith<$Res>? get page {
    if (_value.page == null) {
      return null;
    }

    return $BebeliPageCopyWith<$Res>(_value.page!, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BebeliPagingCopyWith<$Res>
    implements $BebeliPagingCopyWith<$Res> {
  factory _$$_BebeliPagingCopyWith(
          _$_BebeliPaging value, $Res Function(_$_BebeliPaging) then) =
      __$$_BebeliPagingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BebeliPage? page, List<BebeliProduct>? data});

  @override
  $BebeliPageCopyWith<$Res>? get page;
}

/// @nodoc
class __$$_BebeliPagingCopyWithImpl<$Res>
    extends _$BebeliPagingCopyWithImpl<$Res, _$_BebeliPaging>
    implements _$$_BebeliPagingCopyWith<$Res> {
  __$$_BebeliPagingCopyWithImpl(
      _$_BebeliPaging _value, $Res Function(_$_BebeliPaging) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BebeliPaging(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as BebeliPage?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BebeliProduct>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BebeliPaging implements _BebeliPaging {
  _$_BebeliPaging({this.page, final List<BebeliProduct>? data}) : _data = data;

  factory _$_BebeliPaging.fromJson(Map<String, dynamic> json) =>
      _$$_BebeliPagingFromJson(json);

  @override
  final BebeliPage? page;
  final List<BebeliProduct>? _data;
  @override
  List<BebeliProduct>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BebeliPaging(page: $page, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BebeliPaging &&
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
  _$$_BebeliPagingCopyWith<_$_BebeliPaging> get copyWith =>
      __$$_BebeliPagingCopyWithImpl<_$_BebeliPaging>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BebeliPagingToJson(
      this,
    );
  }
}

abstract class _BebeliPaging implements BebeliPaging {
  factory _BebeliPaging(
      {final BebeliPage? page,
      final List<BebeliProduct>? data}) = _$_BebeliPaging;

  factory _BebeliPaging.fromJson(Map<String, dynamic> json) =
      _$_BebeliPaging.fromJson;

  @override
  BebeliPage? get page;
  @override
  List<BebeliProduct>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_BebeliPagingCopyWith<_$_BebeliPaging> get copyWith =>
      throw _privateConstructorUsedError;
}
