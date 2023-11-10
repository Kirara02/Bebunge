// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'berita_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeritaPages _$BeritaPagesFromJson(Map<String, dynamic> json) {
  return _BeritaPages.fromJson(json);
}

/// @nodoc
mixin _$BeritaPages {
  int? get limit => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  int? get rowresult => throw _privateConstructorUsedError;
  int? get totalpage => throw _privateConstructorUsedError;
  int? get totalrow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeritaPagesCopyWith<BeritaPages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeritaPagesCopyWith<$Res> {
  factory $BeritaPagesCopyWith(
          BeritaPages value, $Res Function(BeritaPages) then) =
      _$BeritaPagesCopyWithImpl<$Res, BeritaPages>;
  @useResult
  $Res call(
      {int? limit, int? number, int? rowresult, int? totalpage, int? totalrow});
}

/// @nodoc
class _$BeritaPagesCopyWithImpl<$Res, $Val extends BeritaPages>
    implements $BeritaPagesCopyWith<$Res> {
  _$BeritaPagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? number = freezed,
    Object? rowresult = freezed,
    Object? totalpage = freezed,
    Object? totalrow = freezed,
  }) {
    return _then(_value.copyWith(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      rowresult: freezed == rowresult
          ? _value.rowresult
          : rowresult // ignore: cast_nullable_to_non_nullable
              as int?,
      totalpage: freezed == totalpage
          ? _value.totalpage
          : totalpage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalrow: freezed == totalrow
          ? _value.totalrow
          : totalrow // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BeritaPagesCopyWith<$Res>
    implements $BeritaPagesCopyWith<$Res> {
  factory _$$_BeritaPagesCopyWith(
          _$_BeritaPages value, $Res Function(_$_BeritaPages) then) =
      __$$_BeritaPagesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? limit, int? number, int? rowresult, int? totalpage, int? totalrow});
}

/// @nodoc
class __$$_BeritaPagesCopyWithImpl<$Res>
    extends _$BeritaPagesCopyWithImpl<$Res, _$_BeritaPages>
    implements _$$_BeritaPagesCopyWith<$Res> {
  __$$_BeritaPagesCopyWithImpl(
      _$_BeritaPages _value, $Res Function(_$_BeritaPages) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = freezed,
    Object? number = freezed,
    Object? rowresult = freezed,
    Object? totalpage = freezed,
    Object? totalrow = freezed,
  }) {
    return _then(_$_BeritaPages(
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      rowresult: freezed == rowresult
          ? _value.rowresult
          : rowresult // ignore: cast_nullable_to_non_nullable
              as int?,
      totalpage: freezed == totalpage
          ? _value.totalpage
          : totalpage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalrow: freezed == totalrow
          ? _value.totalrow
          : totalrow // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BeritaPages implements _BeritaPages {
  _$_BeritaPages(
      {this.limit, this.number, this.rowresult, this.totalpage, this.totalrow});

  factory _$_BeritaPages.fromJson(Map<String, dynamic> json) =>
      _$$_BeritaPagesFromJson(json);

  @override
  final int? limit;
  @override
  final int? number;
  @override
  final int? rowresult;
  @override
  final int? totalpage;
  @override
  final int? totalrow;

  @override
  String toString() {
    return 'BeritaPages(limit: $limit, number: $number, rowresult: $rowresult, totalpage: $totalpage, totalrow: $totalrow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeritaPages &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.rowresult, rowresult) ||
                other.rowresult == rowresult) &&
            (identical(other.totalpage, totalpage) ||
                other.totalpage == totalpage) &&
            (identical(other.totalrow, totalrow) ||
                other.totalrow == totalrow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, limit, number, rowresult, totalpage, totalrow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeritaPagesCopyWith<_$_BeritaPages> get copyWith =>
      __$$_BeritaPagesCopyWithImpl<_$_BeritaPages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeritaPagesToJson(
      this,
    );
  }
}

abstract class _BeritaPages implements BeritaPages {
  factory _BeritaPages(
      {final int? limit,
      final int? number,
      final int? rowresult,
      final int? totalpage,
      final int? totalrow}) = _$_BeritaPages;

  factory _BeritaPages.fromJson(Map<String, dynamic> json) =
      _$_BeritaPages.fromJson;

  @override
  int? get limit;
  @override
  int? get number;
  @override
  int? get rowresult;
  @override
  int? get totalpage;
  @override
  int? get totalrow;
  @override
  @JsonKey(ignore: true)
  _$$_BeritaPagesCopyWith<_$_BeritaPages> get copyWith =>
      throw _privateConstructorUsedError;
}
