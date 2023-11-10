// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bebeli_filter_cat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BebeliFilterCat _$BebeliFilterCatFromJson(Map<String, dynamic> json) {
  return _BebeliFilterCat.fromJson(json);
}

/// @nodoc
mixin _$BebeliFilterCat {
  int? get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get gambar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BebeliFilterCatCopyWith<BebeliFilterCat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BebeliFilterCatCopyWith<$Res> {
  factory $BebeliFilterCatCopyWith(
          BebeliFilterCat value, $Res Function(BebeliFilterCat) then) =
      _$BebeliFilterCatCopyWithImpl<$Res, BebeliFilterCat>;
  @useResult
  $Res call({int? id, String? text, String? gambar});
}

/// @nodoc
class _$BebeliFilterCatCopyWithImpl<$Res, $Val extends BebeliFilterCat>
    implements $BebeliFilterCatCopyWith<$Res> {
  _$BebeliFilterCatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? gambar = freezed,
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
      gambar: freezed == gambar
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BebeliFilterCatCopyWith<$Res>
    implements $BebeliFilterCatCopyWith<$Res> {
  factory _$$_BebeliFilterCatCopyWith(
          _$_BebeliFilterCat value, $Res Function(_$_BebeliFilterCat) then) =
      __$$_BebeliFilterCatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? text, String? gambar});
}

/// @nodoc
class __$$_BebeliFilterCatCopyWithImpl<$Res>
    extends _$BebeliFilterCatCopyWithImpl<$Res, _$_BebeliFilterCat>
    implements _$$_BebeliFilterCatCopyWith<$Res> {
  __$$_BebeliFilterCatCopyWithImpl(
      _$_BebeliFilterCat _value, $Res Function(_$_BebeliFilterCat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? gambar = freezed,
  }) {
    return _then(_$_BebeliFilterCat(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      gambar: freezed == gambar
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BebeliFilterCat implements _BebeliFilterCat {
  _$_BebeliFilterCat({this.id, this.text, this.gambar});

  factory _$_BebeliFilterCat.fromJson(Map<String, dynamic> json) =>
      _$$_BebeliFilterCatFromJson(json);

  @override
  final int? id;
  @override
  final String? text;
  @override
  final String? gambar;

  @override
  String toString() {
    return 'BebeliFilterCat(id: $id, text: $text, gambar: $gambar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BebeliFilterCat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.gambar, gambar) || other.gambar == gambar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, gambar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BebeliFilterCatCopyWith<_$_BebeliFilterCat> get copyWith =>
      __$$_BebeliFilterCatCopyWithImpl<_$_BebeliFilterCat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BebeliFilterCatToJson(
      this,
    );
  }
}

abstract class _BebeliFilterCat implements BebeliFilterCat {
  factory _BebeliFilterCat(
      {final int? id,
      final String? text,
      final String? gambar}) = _$_BebeliFilterCat;

  factory _BebeliFilterCat.fromJson(Map<String, dynamic> json) =
      _$_BebeliFilterCat.fromJson;

  @override
  int? get id;
  @override
  String? get text;
  @override
  String? get gambar;
  @override
  @JsonKey(ignore: true)
  _$$_BebeliFilterCatCopyWith<_$_BebeliFilterCat> get copyWith =>
      throw _privateConstructorUsedError;
}
