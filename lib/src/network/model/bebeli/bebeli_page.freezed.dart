// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bebeli_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BebeliPage _$BebeliPageFromJson(Map<String, dynamic> json) {
  return _BebeliPage.fromJson(json);
}

/// @nodoc
mixin _$BebeliPage {
  int? get prev => throw _privateConstructorUsedError;
  int? get next => throw _privateConstructorUsedError;
  int? get start => throw _privateConstructorUsedError;
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BebeliPageCopyWith<BebeliPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BebeliPageCopyWith<$Res> {
  factory $BebeliPageCopyWith(
          BebeliPage value, $Res Function(BebeliPage) then) =
      _$BebeliPageCopyWithImpl<$Res, BebeliPage>;
  @useResult
  $Res call(
      {int? prev,
      int? next,
      int? start,
      @JsonKey(name: "current_page") int? currentPage,
      int? limit,
      int? count});
}

/// @nodoc
class _$BebeliPageCopyWithImpl<$Res, $Val extends BebeliPage>
    implements $BebeliPageCopyWith<$Res> {
  _$BebeliPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prev = freezed,
    Object? next = freezed,
    Object? start = freezed,
    Object? currentPage = freezed,
    Object? limit = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BebeliPageCopyWith<$Res>
    implements $BebeliPageCopyWith<$Res> {
  factory _$$_BebeliPageCopyWith(
          _$_BebeliPage value, $Res Function(_$_BebeliPage) then) =
      __$$_BebeliPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? prev,
      int? next,
      int? start,
      @JsonKey(name: "current_page") int? currentPage,
      int? limit,
      int? count});
}

/// @nodoc
class __$$_BebeliPageCopyWithImpl<$Res>
    extends _$BebeliPageCopyWithImpl<$Res, _$_BebeliPage>
    implements _$$_BebeliPageCopyWith<$Res> {
  __$$_BebeliPageCopyWithImpl(
      _$_BebeliPage _value, $Res Function(_$_BebeliPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prev = freezed,
    Object? next = freezed,
    Object? start = freezed,
    Object? currentPage = freezed,
    Object? limit = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_BebeliPage(
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BebeliPage implements _BebeliPage {
  _$_BebeliPage(
      {this.prev,
      this.next,
      this.start,
      @JsonKey(name: "current_page") this.currentPage,
      this.limit,
      this.count});

  factory _$_BebeliPage.fromJson(Map<String, dynamic> json) =>
      _$$_BebeliPageFromJson(json);

  @override
  final int? prev;
  @override
  final int? next;
  @override
  final int? start;
  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  @override
  final int? limit;
  @override
  final int? count;

  @override
  String toString() {
    return 'BebeliPage(prev: $prev, next: $next, start: $start, currentPage: $currentPage, limit: $limit, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BebeliPage &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, prev, next, start, currentPage, limit, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BebeliPageCopyWith<_$_BebeliPage> get copyWith =>
      __$$_BebeliPageCopyWithImpl<_$_BebeliPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BebeliPageToJson(
      this,
    );
  }
}

abstract class _BebeliPage implements BebeliPage {
  factory _BebeliPage(
      {final int? prev,
      final int? next,
      final int? start,
      @JsonKey(name: "current_page") final int? currentPage,
      final int? limit,
      final int? count}) = _$_BebeliPage;

  factory _BebeliPage.fromJson(Map<String, dynamic> json) =
      _$_BebeliPage.fromJson;

  @override
  int? get prev;
  @override
  int? get next;
  @override
  int? get start;
  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  int? get limit;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$_BebeliPageCopyWith<_$_BebeliPage> get copyWith =>
      throw _privateConstructorUsedError;
}
