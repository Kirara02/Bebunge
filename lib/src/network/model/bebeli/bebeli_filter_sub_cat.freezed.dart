// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bebeli_filter_sub_cat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BebeliFilterSubCat _$BebeliFilterSubCatFromJson(Map<String, dynamic> json) {
  return _BebeliFilterSubCat.fromJson(json);
}

/// @nodoc
mixin _$BebeliFilterSubCat {
  int? get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  int? get kategori => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BebeliFilterSubCatCopyWith<BebeliFilterSubCat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BebeliFilterSubCatCopyWith<$Res> {
  factory $BebeliFilterSubCatCopyWith(
          BebeliFilterSubCat value, $Res Function(BebeliFilterSubCat) then) =
      _$BebeliFilterSubCatCopyWithImpl<$Res, BebeliFilterSubCat>;
  @useResult
  $Res call({int? id, String? text, int? kategori});
}

/// @nodoc
class _$BebeliFilterSubCatCopyWithImpl<$Res, $Val extends BebeliFilterSubCat>
    implements $BebeliFilterSubCatCopyWith<$Res> {
  _$BebeliFilterSubCatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? kategori = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      kategori: freezed == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BebeliFilterSubCatCopyWith<$Res>
    implements $BebeliFilterSubCatCopyWith<$Res> {
  factory _$$_BebeliFilterSubCatCopyWith(_$_BebeliFilterSubCat value,
          $Res Function(_$_BebeliFilterSubCat) then) =
      __$$_BebeliFilterSubCatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? text, int? kategori});
}

/// @nodoc
class __$$_BebeliFilterSubCatCopyWithImpl<$Res>
    extends _$BebeliFilterSubCatCopyWithImpl<$Res, _$_BebeliFilterSubCat>
    implements _$$_BebeliFilterSubCatCopyWith<$Res> {
  __$$_BebeliFilterSubCatCopyWithImpl(
      _$_BebeliFilterSubCat _value, $Res Function(_$_BebeliFilterSubCat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? kategori = freezed,
  }) {
    return _then(_$_BebeliFilterSubCat(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      kategori: freezed == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BebeliFilterSubCat implements _BebeliFilterSubCat {
  _$_BebeliFilterSubCat({this.id, this.text, this.kategori});

  factory _$_BebeliFilterSubCat.fromJson(Map<String, dynamic> json) =>
      _$$_BebeliFilterSubCatFromJson(json);

  @override
  final int? id;
  @override
  final String? text;
  @override
  final int? kategori;

  @override
  String toString() {
    return 'BebeliFilterSubCat(id: $id, text: $text, kategori: $kategori)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BebeliFilterSubCat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.kategori, kategori) ||
                other.kategori == kategori));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, kategori);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BebeliFilterSubCatCopyWith<_$_BebeliFilterSubCat> get copyWith =>
      __$$_BebeliFilterSubCatCopyWithImpl<_$_BebeliFilterSubCat>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BebeliFilterSubCatToJson(
      this,
    );
  }
}

abstract class _BebeliFilterSubCat implements BebeliFilterSubCat {
  factory _BebeliFilterSubCat(
      {final int? id,
      final String? text,
      final int? kategori}) = _$_BebeliFilterSubCat;

  factory _BebeliFilterSubCat.fromJson(Map<String, dynamic> json) =
      _$_BebeliFilterSubCat.fromJson;

  @override
  int? get id;
  @override
  String? get text;
  @override
  int? get kategori;
  @override
  @JsonKey(ignore: true)
  _$$_BebeliFilterSubCatCopyWith<_$_BebeliFilterSubCat> get copyWith =>
      throw _privateConstructorUsedError;
}
