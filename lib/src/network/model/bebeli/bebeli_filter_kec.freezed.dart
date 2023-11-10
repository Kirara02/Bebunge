// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bebeli_filter_kec.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BebeliFilterKec _$BebeliFilterKecFromJson(Map<String, dynamic> json) {
  return _BebeliFilterKec.fromJson(json);
}

/// @nodoc
mixin _$BebeliFilterKec {
  String? get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BebeliFilterKecCopyWith<BebeliFilterKec> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BebeliFilterKecCopyWith<$Res> {
  factory $BebeliFilterKecCopyWith(
          BebeliFilterKec value, $Res Function(BebeliFilterKec) then) =
      _$BebeliFilterKecCopyWithImpl<$Res, BebeliFilterKec>;
  @useResult
  $Res call({String? id, String? text});
}

/// @nodoc
class _$BebeliFilterKecCopyWithImpl<$Res, $Val extends BebeliFilterKec>
    implements $BebeliFilterKecCopyWith<$Res> {
  _$BebeliFilterKecCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BebeliFilterKecCopyWith<$Res>
    implements $BebeliFilterKecCopyWith<$Res> {
  factory _$$_BebeliFilterKecCopyWith(
          _$_BebeliFilterKec value, $Res Function(_$_BebeliFilterKec) then) =
      __$$_BebeliFilterKecCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? text});
}

/// @nodoc
class __$$_BebeliFilterKecCopyWithImpl<$Res>
    extends _$BebeliFilterKecCopyWithImpl<$Res, _$_BebeliFilterKec>
    implements _$$_BebeliFilterKecCopyWith<$Res> {
  __$$_BebeliFilterKecCopyWithImpl(
      _$_BebeliFilterKec _value, $Res Function(_$_BebeliFilterKec) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_BebeliFilterKec(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BebeliFilterKec implements _BebeliFilterKec {
  _$_BebeliFilterKec({this.id, this.text});

  factory _$_BebeliFilterKec.fromJson(Map<String, dynamic> json) =>
      _$$_BebeliFilterKecFromJson(json);

  @override
  final String? id;
  @override
  final String? text;

  @override
  String toString() {
    return 'BebeliFilterKec(id: $id, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BebeliFilterKec &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BebeliFilterKecCopyWith<_$_BebeliFilterKec> get copyWith =>
      __$$_BebeliFilterKecCopyWithImpl<_$_BebeliFilterKec>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BebeliFilterKecToJson(
      this,
    );
  }
}

abstract class _BebeliFilterKec implements BebeliFilterKec {
  factory _BebeliFilterKec({final String? id, final String? text}) =
      _$_BebeliFilterKec;

  factory _BebeliFilterKec.fromJson(Map<String, dynamic> json) =
      _$_BebeliFilterKec.fromJson;

  @override
  String? get id;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_BebeliFilterKecCopyWith<_$_BebeliFilterKec> get copyWith =>
      throw _privateConstructorUsedError;
}
