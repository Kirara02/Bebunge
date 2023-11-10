// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skpd_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SkpdItem _$SkpdItemFromJson(Map<String, dynamic> json) {
  return _SkpdItem.fromJson(json);
}

/// @nodoc
mixin _$SkpdItem {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkpdItemCopyWith<SkpdItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkpdItemCopyWith<$Res> {
  factory $SkpdItemCopyWith(SkpdItem value, $Res Function(SkpdItem) then) =
      _$SkpdItemCopyWithImpl<$Res, SkpdItem>;
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class _$SkpdItemCopyWithImpl<$Res, $Val extends SkpdItem>
    implements $SkpdItemCopyWith<$Res> {
  _$SkpdItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SkpdItemCopyWith<$Res> implements $SkpdItemCopyWith<$Res> {
  factory _$$_SkpdItemCopyWith(
          _$_SkpdItem value, $Res Function(_$_SkpdItem) then) =
      __$$_SkpdItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class __$$_SkpdItemCopyWithImpl<$Res>
    extends _$SkpdItemCopyWithImpl<$Res, _$_SkpdItem>
    implements _$$_SkpdItemCopyWith<$Res> {
  __$$_SkpdItemCopyWithImpl(
      _$_SkpdItem _value, $Res Function(_$_SkpdItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_$_SkpdItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SkpdItem implements _SkpdItem {
  _$_SkpdItem({this.id = '', this.text = ''});

  factory _$_SkpdItem.fromJson(Map<String, dynamic> json) =>
      _$$_SkpdItemFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'SkpdItem(id: $id, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SkpdItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SkpdItemCopyWith<_$_SkpdItem> get copyWith =>
      __$$_SkpdItemCopyWithImpl<_$_SkpdItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SkpdItemToJson(
      this,
    );
  }
}

abstract class _SkpdItem implements SkpdItem {
  factory _SkpdItem({final String id, final String text}) = _$_SkpdItem;

  factory _SkpdItem.fromJson(Map<String, dynamic> json) = _$_SkpdItem.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_SkpdItemCopyWith<_$_SkpdItem> get copyWith =>
      throw _privateConstructorUsedError;
}
