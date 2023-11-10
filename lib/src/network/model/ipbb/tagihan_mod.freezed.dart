// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tagihan_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TagihanMod _$TagihanModFromJson(Map<String, dynamic> json) {
  return _TagihanMod.fromJson(json);
}

/// @nodoc
mixin _$TagihanMod {
  String? get tahun => throw _privateConstructorUsedError;
  int? get pokok => throw _privateConstructorUsedError;
  int? get denda => throw _privateConstructorUsedError;
  int? get bayar => throw _privateConstructorUsedError;
  int? get sisa => throw _privateConstructorUsedError;
  @JsonKey(name: 'tgl_bayar')
  String? get tglBayar => throw _privateConstructorUsedError;
  String? get lunas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagihanModCopyWith<TagihanMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagihanModCopyWith<$Res> {
  factory $TagihanModCopyWith(
          TagihanMod value, $Res Function(TagihanMod) then) =
      _$TagihanModCopyWithImpl<$Res, TagihanMod>;
  @useResult
  $Res call(
      {String? tahun,
      int? pokok,
      int? denda,
      int? bayar,
      int? sisa,
      @JsonKey(name: 'tgl_bayar') String? tglBayar,
      String? lunas});
}

/// @nodoc
class _$TagihanModCopyWithImpl<$Res, $Val extends TagihanMod>
    implements $TagihanModCopyWith<$Res> {
  _$TagihanModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tahun = freezed,
    Object? pokok = freezed,
    Object? denda = freezed,
    Object? bayar = freezed,
    Object? sisa = freezed,
    Object? tglBayar = freezed,
    Object? lunas = freezed,
  }) {
    return _then(_value.copyWith(
      tahun: freezed == tahun
          ? _value.tahun
          : tahun // ignore: cast_nullable_to_non_nullable
              as String?,
      pokok: freezed == pokok
          ? _value.pokok
          : pokok // ignore: cast_nullable_to_non_nullable
              as int?,
      denda: freezed == denda
          ? _value.denda
          : denda // ignore: cast_nullable_to_non_nullable
              as int?,
      bayar: freezed == bayar
          ? _value.bayar
          : bayar // ignore: cast_nullable_to_non_nullable
              as int?,
      sisa: freezed == sisa
          ? _value.sisa
          : sisa // ignore: cast_nullable_to_non_nullable
              as int?,
      tglBayar: freezed == tglBayar
          ? _value.tglBayar
          : tglBayar // ignore: cast_nullable_to_non_nullable
              as String?,
      lunas: freezed == lunas
          ? _value.lunas
          : lunas // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TagihanModCopyWith<$Res>
    implements $TagihanModCopyWith<$Res> {
  factory _$$_TagihanModCopyWith(
          _$_TagihanMod value, $Res Function(_$_TagihanMod) then) =
      __$$_TagihanModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? tahun,
      int? pokok,
      int? denda,
      int? bayar,
      int? sisa,
      @JsonKey(name: 'tgl_bayar') String? tglBayar,
      String? lunas});
}

/// @nodoc
class __$$_TagihanModCopyWithImpl<$Res>
    extends _$TagihanModCopyWithImpl<$Res, _$_TagihanMod>
    implements _$$_TagihanModCopyWith<$Res> {
  __$$_TagihanModCopyWithImpl(
      _$_TagihanMod _value, $Res Function(_$_TagihanMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tahun = freezed,
    Object? pokok = freezed,
    Object? denda = freezed,
    Object? bayar = freezed,
    Object? sisa = freezed,
    Object? tglBayar = freezed,
    Object? lunas = freezed,
  }) {
    return _then(_$_TagihanMod(
      tahun: freezed == tahun
          ? _value.tahun
          : tahun // ignore: cast_nullable_to_non_nullable
              as String?,
      pokok: freezed == pokok
          ? _value.pokok
          : pokok // ignore: cast_nullable_to_non_nullable
              as int?,
      denda: freezed == denda
          ? _value.denda
          : denda // ignore: cast_nullable_to_non_nullable
              as int?,
      bayar: freezed == bayar
          ? _value.bayar
          : bayar // ignore: cast_nullable_to_non_nullable
              as int?,
      sisa: freezed == sisa
          ? _value.sisa
          : sisa // ignore: cast_nullable_to_non_nullable
              as int?,
      tglBayar: freezed == tglBayar
          ? _value.tglBayar
          : tglBayar // ignore: cast_nullable_to_non_nullable
              as String?,
      lunas: freezed == lunas
          ? _value.lunas
          : lunas // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TagihanMod implements _TagihanMod {
  const _$_TagihanMod(
      {this.tahun = '',
      this.pokok = 0,
      this.denda = 0,
      this.bayar = 0,
      this.sisa = 0,
      @JsonKey(name: 'tgl_bayar') this.tglBayar = '',
      this.lunas = ''});

  factory _$_TagihanMod.fromJson(Map<String, dynamic> json) =>
      _$$_TagihanModFromJson(json);

  @override
  @JsonKey()
  final String? tahun;
  @override
  @JsonKey()
  final int? pokok;
  @override
  @JsonKey()
  final int? denda;
  @override
  @JsonKey()
  final int? bayar;
  @override
  @JsonKey()
  final int? sisa;
  @override
  @JsonKey(name: 'tgl_bayar')
  final String? tglBayar;
  @override
  @JsonKey()
  final String? lunas;

  @override
  String toString() {
    return 'TagihanMod(tahun: $tahun, pokok: $pokok, denda: $denda, bayar: $bayar, sisa: $sisa, tglBayar: $tglBayar, lunas: $lunas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TagihanMod &&
            (identical(other.tahun, tahun) || other.tahun == tahun) &&
            (identical(other.pokok, pokok) || other.pokok == pokok) &&
            (identical(other.denda, denda) || other.denda == denda) &&
            (identical(other.bayar, bayar) || other.bayar == bayar) &&
            (identical(other.sisa, sisa) || other.sisa == sisa) &&
            (identical(other.tglBayar, tglBayar) ||
                other.tglBayar == tglBayar) &&
            (identical(other.lunas, lunas) || other.lunas == lunas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, tahun, pokok, denda, bayar, sisa, tglBayar, lunas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TagihanModCopyWith<_$_TagihanMod> get copyWith =>
      __$$_TagihanModCopyWithImpl<_$_TagihanMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TagihanModToJson(
      this,
    );
  }
}

abstract class _TagihanMod implements TagihanMod {
  const factory _TagihanMod(
      {final String? tahun,
      final int? pokok,
      final int? denda,
      final int? bayar,
      final int? sisa,
      @JsonKey(name: 'tgl_bayar') final String? tglBayar,
      final String? lunas}) = _$_TagihanMod;

  factory _TagihanMod.fromJson(Map<String, dynamic> json) =
      _$_TagihanMod.fromJson;

  @override
  String? get tahun;
  @override
  int? get pokok;
  @override
  int? get denda;
  @override
  int? get bayar;
  @override
  int? get sisa;
  @override
  @JsonKey(name: 'tgl_bayar')
  String? get tglBayar;
  @override
  String? get lunas;
  @override
  @JsonKey(ignore: true)
  _$$_TagihanModCopyWith<_$_TagihanMod> get copyWith =>
      throw _privateConstructorUsedError;
}
