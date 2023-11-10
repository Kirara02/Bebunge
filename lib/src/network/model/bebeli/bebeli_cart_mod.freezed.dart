// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bebeli_cart_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BebeliCartMod _$BebeliCartModFromJson(Map<String, dynamic> json) {
  return _BebeliCartMod.fromJson(json);
}

/// @nodoc
mixin _$BebeliCartMod {
  int? get total => throw _privateConstructorUsedError;
  int? get nilai => throw _privateConstructorUsedError;
  @JsonSerializable(explicitToJson: true)
  List<BebeliProductCartMod> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BebeliCartModCopyWith<BebeliCartMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BebeliCartModCopyWith<$Res> {
  factory $BebeliCartModCopyWith(
          BebeliCartMod value, $Res Function(BebeliCartMod) then) =
      _$BebeliCartModCopyWithImpl<$Res, BebeliCartMod>;
  @useResult
  $Res call(
      {int? total,
      int? nilai,
      @JsonSerializable(explicitToJson: true) List<BebeliProductCartMod> data});
}

/// @nodoc
class _$BebeliCartModCopyWithImpl<$Res, $Val extends BebeliCartMod>
    implements $BebeliCartModCopyWith<$Res> {
  _$BebeliCartModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? nilai = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      nilai: freezed == nilai
          ? _value.nilai
          : nilai // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BebeliProductCartMod>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BebeliCartModCopyWith<$Res>
    implements $BebeliCartModCopyWith<$Res> {
  factory _$$_BebeliCartModCopyWith(
          _$_BebeliCartMod value, $Res Function(_$_BebeliCartMod) then) =
      __$$_BebeliCartModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? total,
      int? nilai,
      @JsonSerializable(explicitToJson: true) List<BebeliProductCartMod> data});
}

/// @nodoc
class __$$_BebeliCartModCopyWithImpl<$Res>
    extends _$BebeliCartModCopyWithImpl<$Res, _$_BebeliCartMod>
    implements _$$_BebeliCartModCopyWith<$Res> {
  __$$_BebeliCartModCopyWithImpl(
      _$_BebeliCartMod _value, $Res Function(_$_BebeliCartMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? nilai = freezed,
    Object? data = null,
  }) {
    return _then(_$_BebeliCartMod(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      nilai: freezed == nilai
          ? _value.nilai
          : nilai // ignore: cast_nullable_to_non_nullable
              as int?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BebeliProductCartMod>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BebeliCartMod implements _BebeliCartMod {
  _$_BebeliCartMod(
      {this.total,
      this.nilai,
      @JsonSerializable(explicitToJson: true)
          final List<BebeliProductCartMod> data = const []})
      : _data = data;

  factory _$_BebeliCartMod.fromJson(Map<String, dynamic> json) =>
      _$$_BebeliCartModFromJson(json);

  @override
  final int? total;
  @override
  final int? nilai;
  final List<BebeliProductCartMod> _data;
  @override
  @JsonKey()
  @JsonSerializable(explicitToJson: true)
  List<BebeliProductCartMod> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BebeliCartMod(total: $total, nilai: $nilai, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BebeliCartMod &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.nilai, nilai) || other.nilai == nilai) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, nilai, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BebeliCartModCopyWith<_$_BebeliCartMod> get copyWith =>
      __$$_BebeliCartModCopyWithImpl<_$_BebeliCartMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BebeliCartModToJson(
      this,
    );
  }
}

abstract class _BebeliCartMod implements BebeliCartMod {
  factory _BebeliCartMod(
      {final int? total,
      final int? nilai,
      @JsonSerializable(explicitToJson: true)
          final List<BebeliProductCartMod> data}) = _$_BebeliCartMod;

  factory _BebeliCartMod.fromJson(Map<String, dynamic> json) =
      _$_BebeliCartMod.fromJson;

  @override
  int? get total;
  @override
  int? get nilai;
  @override
  @JsonSerializable(explicitToJson: true)
  List<BebeliProductCartMod> get data;
  @override
  @JsonKey(ignore: true)
  _$$_BebeliCartModCopyWith<_$_BebeliCartMod> get copyWith =>
      throw _privateConstructorUsedError;
}
