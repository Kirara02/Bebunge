// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bebeli_filter_kel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BebeliFilterKel _$BebeliFilterKelFromJson(Map<String, dynamic> json) {
  return _BebeliFilterKel.fromJson(json);
}

/// @nodoc
mixin _$BebeliFilterKel {
  String? get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BebeliFilterKelCopyWith<BebeliFilterKel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BebeliFilterKelCopyWith<$Res> {
  factory $BebeliFilterKelCopyWith(
          BebeliFilterKel value, $Res Function(BebeliFilterKel) then) =
      _$BebeliFilterKelCopyWithImpl<$Res, BebeliFilterKel>;
  @useResult
  $Res call({String? id, String? text});
}

/// @nodoc
class _$BebeliFilterKelCopyWithImpl<$Res, $Val extends BebeliFilterKel>
    implements $BebeliFilterKelCopyWith<$Res> {
  _$BebeliFilterKelCopyWithImpl(this._value, this._then);

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
abstract class _$$_BebeliFilterKelCopyWith<$Res>
    implements $BebeliFilterKelCopyWith<$Res> {
  factory _$$_BebeliFilterKelCopyWith(
          _$_BebeliFilterKel value, $Res Function(_$_BebeliFilterKel) then) =
      __$$_BebeliFilterKelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? text});
}

/// @nodoc
class __$$_BebeliFilterKelCopyWithImpl<$Res>
    extends _$BebeliFilterKelCopyWithImpl<$Res, _$_BebeliFilterKel>
    implements _$$_BebeliFilterKelCopyWith<$Res> {
  __$$_BebeliFilterKelCopyWithImpl(
      _$_BebeliFilterKel _value, $Res Function(_$_BebeliFilterKel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_BebeliFilterKel(
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
class _$_BebeliFilterKel implements _BebeliFilterKel {
  _$_BebeliFilterKel({this.id, this.text});

  factory _$_BebeliFilterKel.fromJson(Map<String, dynamic> json) =>
      _$$_BebeliFilterKelFromJson(json);

  @override
  final String? id;
  @override
  final String? text;

  @override
  String toString() {
    return 'BebeliFilterKel(id: $id, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BebeliFilterKel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BebeliFilterKelCopyWith<_$_BebeliFilterKel> get copyWith =>
      __$$_BebeliFilterKelCopyWithImpl<_$_BebeliFilterKel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BebeliFilterKelToJson(
      this,
    );
  }
}

abstract class _BebeliFilterKel implements BebeliFilterKel {
  factory _BebeliFilterKel({final String? id, final String? text}) =
      _$_BebeliFilterKel;

  factory _BebeliFilterKel.fromJson(Map<String, dynamic> json) =
      _$_BebeliFilterKel.fromJson;

  @override
  String? get id;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_BebeliFilterKelCopyWith<_$_BebeliFilterKel> get copyWith =>
      throw _privateConstructorUsedError;
}
