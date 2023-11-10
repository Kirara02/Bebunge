// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sekolah_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SekolahPage _$SekolahPageFromJson(Map<String, dynamic> json) {
  return _SekolahPage.fromJson(json);
}

/// @nodoc
mixin _$SekolahPage {
  int? get currentpage => throw _privateConstructorUsedError;
  bool? get morepage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SekolahPageCopyWith<SekolahPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SekolahPageCopyWith<$Res> {
  factory $SekolahPageCopyWith(
          SekolahPage value, $Res Function(SekolahPage) then) =
      _$SekolahPageCopyWithImpl<$Res, SekolahPage>;
  @useResult
  $Res call({int? currentpage, bool? morepage});
}

/// @nodoc
class _$SekolahPageCopyWithImpl<$Res, $Val extends SekolahPage>
    implements $SekolahPageCopyWith<$Res> {
  _$SekolahPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentpage = freezed,
    Object? morepage = freezed,
  }) {
    return _then(_value.copyWith(
      currentpage: freezed == currentpage
          ? _value.currentpage
          : currentpage // ignore: cast_nullable_to_non_nullable
              as int?,
      morepage: freezed == morepage
          ? _value.morepage
          : morepage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SekolahPageCopyWith<$Res>
    implements $SekolahPageCopyWith<$Res> {
  factory _$$_SekolahPageCopyWith(
          _$_SekolahPage value, $Res Function(_$_SekolahPage) then) =
      __$$_SekolahPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? currentpage, bool? morepage});
}

/// @nodoc
class __$$_SekolahPageCopyWithImpl<$Res>
    extends _$SekolahPageCopyWithImpl<$Res, _$_SekolahPage>
    implements _$$_SekolahPageCopyWith<$Res> {
  __$$_SekolahPageCopyWithImpl(
      _$_SekolahPage _value, $Res Function(_$_SekolahPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentpage = freezed,
    Object? morepage = freezed,
  }) {
    return _then(_$_SekolahPage(
      currentpage: freezed == currentpage
          ? _value.currentpage
          : currentpage // ignore: cast_nullable_to_non_nullable
              as int?,
      morepage: freezed == morepage
          ? _value.morepage
          : morepage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SekolahPage implements _SekolahPage {
  _$_SekolahPage({this.currentpage, this.morepage});

  factory _$_SekolahPage.fromJson(Map<String, dynamic> json) =>
      _$$_SekolahPageFromJson(json);

  @override
  final int? currentpage;
  @override
  final bool? morepage;

  @override
  String toString() {
    return 'SekolahPage(currentpage: $currentpage, morepage: $morepage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SekolahPage &&
            (identical(other.currentpage, currentpage) ||
                other.currentpage == currentpage) &&
            (identical(other.morepage, morepage) ||
                other.morepage == morepage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentpage, morepage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SekolahPageCopyWith<_$_SekolahPage> get copyWith =>
      __$$_SekolahPageCopyWithImpl<_$_SekolahPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SekolahPageToJson(
      this,
    );
  }
}

abstract class _SekolahPage implements SekolahPage {
  factory _SekolahPage({final int? currentpage, final bool? morepage}) =
      _$_SekolahPage;

  factory _SekolahPage.fromJson(Map<String, dynamic> json) =
      _$_SekolahPage.fromJson;

  @override
  int? get currentpage;
  @override
  bool? get morepage;
  @override
  @JsonKey(ignore: true)
  _$$_SekolahPageCopyWith<_$_SekolahPage> get copyWith =>
      throw _privateConstructorUsedError;
}
