// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ppk_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PpkItem _$PpkItemFromJson(Map<String, dynamic> json) {
  return _PpkItem.fromJson(json);
}

/// @nodoc
mixin _$PpkItem {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'alamat_dinas')
  String get alamatDinas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PpkItemCopyWith<PpkItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PpkItemCopyWith<$Res> {
  factory $PpkItemCopyWith(PpkItem value, $Res Function(PpkItem) then) =
      _$PpkItemCopyWithImpl<$Res, PpkItem>;
  @useResult
  $Res call(
      {String id,
      String text,
      @JsonKey(name: 'alamat_dinas') String alamatDinas});
}

/// @nodoc
class _$PpkItemCopyWithImpl<$Res, $Val extends PpkItem>
    implements $PpkItemCopyWith<$Res> {
  _$PpkItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? alamatDinas = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      alamatDinas: null == alamatDinas
          ? _value.alamatDinas
          : alamatDinas // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PpkItemCopyWith<$Res> implements $PpkItemCopyWith<$Res> {
  factory _$$_PpkItemCopyWith(
          _$_PpkItem value, $Res Function(_$_PpkItem) then) =
      __$$_PpkItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String text,
      @JsonKey(name: 'alamat_dinas') String alamatDinas});
}

/// @nodoc
class __$$_PpkItemCopyWithImpl<$Res>
    extends _$PpkItemCopyWithImpl<$Res, _$_PpkItem>
    implements _$$_PpkItemCopyWith<$Res> {
  __$$_PpkItemCopyWithImpl(_$_PpkItem _value, $Res Function(_$_PpkItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? alamatDinas = null,
  }) {
    return _then(_$_PpkItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      alamatDinas: null == alamatDinas
          ? _value.alamatDinas
          : alamatDinas // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PpkItem implements _PpkItem {
  _$_PpkItem(
      {this.id = '',
      this.text = '',
      @JsonKey(name: 'alamat_dinas') this.alamatDinas = ''});

  factory _$_PpkItem.fromJson(Map<String, dynamic> json) =>
      _$$_PpkItemFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey(name: 'alamat_dinas')
  final String alamatDinas;

  @override
  String toString() {
    return 'PpkItem(id: $id, text: $text, alamatDinas: $alamatDinas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PpkItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.alamatDinas, alamatDinas) ||
                other.alamatDinas == alamatDinas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, alamatDinas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PpkItemCopyWith<_$_PpkItem> get copyWith =>
      __$$_PpkItemCopyWithImpl<_$_PpkItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PpkItemToJson(
      this,
    );
  }
}

abstract class _PpkItem implements PpkItem {
  factory _PpkItem(
      {final String id,
      final String text,
      @JsonKey(name: 'alamat_dinas') final String alamatDinas}) = _$_PpkItem;

  factory _PpkItem.fromJson(Map<String, dynamic> json) = _$_PpkItem.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  @JsonKey(name: 'alamat_dinas')
  String get alamatDinas;
  @override
  @JsonKey(ignore: true)
  _$$_PpkItemCopyWith<_$_PpkItem> get copyWith =>
      throw _privateConstructorUsedError;
}
