// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ipbb_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IPBBMod _$IPBBModFromJson(Map<String, dynamic> json) {
  return _IPBBMod.fromJson(json);
}

/// @nodoc
mixin _$IPBBMod {
  String? get nop => throw _privateConstructorUsedError;
  ObjekPajakMod get op => throw _privateConstructorUsedError;
  List<TagihanMod> get tagihan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IPBBModCopyWith<IPBBMod> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IPBBModCopyWith<$Res> {
  factory $IPBBModCopyWith(IPBBMod value, $Res Function(IPBBMod) then) =
      _$IPBBModCopyWithImpl<$Res, IPBBMod>;
  @useResult
  $Res call({String? nop, ObjekPajakMod op, List<TagihanMod> tagihan});

  $ObjekPajakModCopyWith<$Res> get op;
}

/// @nodoc
class _$IPBBModCopyWithImpl<$Res, $Val extends IPBBMod>
    implements $IPBBModCopyWith<$Res> {
  _$IPBBModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nop = freezed,
    Object? op = null,
    Object? tagihan = null,
  }) {
    return _then(_value.copyWith(
      nop: freezed == nop
          ? _value.nop
          : nop // ignore: cast_nullable_to_non_nullable
              as String?,
      op: null == op
          ? _value.op
          : op // ignore: cast_nullable_to_non_nullable
              as ObjekPajakMod,
      tagihan: null == tagihan
          ? _value.tagihan
          : tagihan // ignore: cast_nullable_to_non_nullable
              as List<TagihanMod>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ObjekPajakModCopyWith<$Res> get op {
    return $ObjekPajakModCopyWith<$Res>(_value.op, (value) {
      return _then(_value.copyWith(op: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IPBBModCopyWith<$Res> implements $IPBBModCopyWith<$Res> {
  factory _$$_IPBBModCopyWith(
          _$_IPBBMod value, $Res Function(_$_IPBBMod) then) =
      __$$_IPBBModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nop, ObjekPajakMod op, List<TagihanMod> tagihan});

  @override
  $ObjekPajakModCopyWith<$Res> get op;
}

/// @nodoc
class __$$_IPBBModCopyWithImpl<$Res>
    extends _$IPBBModCopyWithImpl<$Res, _$_IPBBMod>
    implements _$$_IPBBModCopyWith<$Res> {
  __$$_IPBBModCopyWithImpl(_$_IPBBMod _value, $Res Function(_$_IPBBMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nop = freezed,
    Object? op = null,
    Object? tagihan = null,
  }) {
    return _then(_$_IPBBMod(
      nop: freezed == nop
          ? _value.nop
          : nop // ignore: cast_nullable_to_non_nullable
              as String?,
      op: null == op
          ? _value.op
          : op // ignore: cast_nullable_to_non_nullable
              as ObjekPajakMod,
      tagihan: null == tagihan
          ? _value._tagihan
          : tagihan // ignore: cast_nullable_to_non_nullable
              as List<TagihanMod>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IPBBMod implements _IPBBMod {
  _$_IPBBMod(
      {this.nop = '',
      this.op = const ObjekPajakMod(),
      final List<TagihanMod> tagihan = const []})
      : _tagihan = tagihan;

  factory _$_IPBBMod.fromJson(Map<String, dynamic> json) =>
      _$$_IPBBModFromJson(json);

  @override
  @JsonKey()
  final String? nop;
  @override
  @JsonKey()
  final ObjekPajakMod op;
  final List<TagihanMod> _tagihan;
  @override
  @JsonKey()
  List<TagihanMod> get tagihan {
    if (_tagihan is EqualUnmodifiableListView) return _tagihan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagihan);
  }

  @override
  String toString() {
    return 'IPBBMod(nop: $nop, op: $op, tagihan: $tagihan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IPBBMod &&
            (identical(other.nop, nop) || other.nop == nop) &&
            (identical(other.op, op) || other.op == op) &&
            const DeepCollectionEquality().equals(other._tagihan, _tagihan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, nop, op, const DeepCollectionEquality().hash(_tagihan));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IPBBModCopyWith<_$_IPBBMod> get copyWith =>
      __$$_IPBBModCopyWithImpl<_$_IPBBMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IPBBModToJson(
      this,
    );
  }
}

abstract class _IPBBMod implements IPBBMod {
  factory _IPBBMod(
      {final String? nop,
      final ObjekPajakMod op,
      final List<TagihanMod> tagihan}) = _$_IPBBMod;

  factory _IPBBMod.fromJson(Map<String, dynamic> json) = _$_IPBBMod.fromJson;

  @override
  String? get nop;
  @override
  ObjekPajakMod get op;
  @override
  List<TagihanMod> get tagihan;
  @override
  @JsonKey(ignore: true)
  _$$_IPBBModCopyWith<_$_IPBBMod> get copyWith =>
      throw _privateConstructorUsedError;
}
