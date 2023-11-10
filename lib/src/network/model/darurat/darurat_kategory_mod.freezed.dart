// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'darurat_kategory_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DaruratKategoryMod _$DaruratKategoryModFromJson(Map<String, dynamic> json) {
  return _DaruratKategoryMod.fromJson(json);
}

/// @nodoc
mixin _$DaruratKategoryMod {
  @JsonKey(name: 'id_kategori')
  String? get idKategory => throw _privateConstructorUsedError;
  String? get keterangan => throw _privateConstructorUsedError;
  String? get kategori => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaruratKategoryModCopyWith<DaruratKategoryMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaruratKategoryModCopyWith<$Res> {
  factory $DaruratKategoryModCopyWith(
          DaruratKategoryMod value, $Res Function(DaruratKategoryMod) then) =
      _$DaruratKategoryModCopyWithImpl<$Res, DaruratKategoryMod>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_kategori') String? idKategory,
      String? keterangan,
      String? kategori});
}

/// @nodoc
class _$DaruratKategoryModCopyWithImpl<$Res, $Val extends DaruratKategoryMod>
    implements $DaruratKategoryModCopyWith<$Res> {
  _$DaruratKategoryModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idKategory = freezed,
    Object? keterangan = freezed,
    Object? kategori = freezed,
  }) {
    return _then(_value.copyWith(
      idKategory: freezed == idKategory
          ? _value.idKategory
          : idKategory // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      kategori: freezed == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DaruratKategoryModCopyWith<$Res>
    implements $DaruratKategoryModCopyWith<$Res> {
  factory _$$_DaruratKategoryModCopyWith(_$_DaruratKategoryMod value,
          $Res Function(_$_DaruratKategoryMod) then) =
      __$$_DaruratKategoryModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_kategori') String? idKategory,
      String? keterangan,
      String? kategori});
}

/// @nodoc
class __$$_DaruratKategoryModCopyWithImpl<$Res>
    extends _$DaruratKategoryModCopyWithImpl<$Res, _$_DaruratKategoryMod>
    implements _$$_DaruratKategoryModCopyWith<$Res> {
  __$$_DaruratKategoryModCopyWithImpl(
      _$_DaruratKategoryMod _value, $Res Function(_$_DaruratKategoryMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idKategory = freezed,
    Object? keterangan = freezed,
    Object? kategori = freezed,
  }) {
    return _then(_$_DaruratKategoryMod(
      idKategory: freezed == idKategory
          ? _value.idKategory
          : idKategory // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      kategori: freezed == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DaruratKategoryMod implements _DaruratKategoryMod {
  _$_DaruratKategoryMod(
      {@JsonKey(name: 'id_kategori') this.idKategory,
      this.keterangan,
      this.kategori});

  factory _$_DaruratKategoryMod.fromJson(Map<String, dynamic> json) =>
      _$$_DaruratKategoryModFromJson(json);

  @override
  @JsonKey(name: 'id_kategori')
  final String? idKategory;
  @override
  final String? keterangan;
  @override
  final String? kategori;

  @override
  String toString() {
    return 'DaruratKategoryMod(idKategory: $idKategory, keterangan: $keterangan, kategori: $kategori)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DaruratKategoryMod &&
            (identical(other.idKategory, idKategory) ||
                other.idKategory == idKategory) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan) &&
            (identical(other.kategori, kategori) ||
                other.kategori == kategori));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idKategory, keterangan, kategori);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DaruratKategoryModCopyWith<_$_DaruratKategoryMod> get copyWith =>
      __$$_DaruratKategoryModCopyWithImpl<_$_DaruratKategoryMod>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DaruratKategoryModToJson(
      this,
    );
  }
}

abstract class _DaruratKategoryMod implements DaruratKategoryMod {
  factory _DaruratKategoryMod(
      {@JsonKey(name: 'id_kategori') final String? idKategory,
      final String? keterangan,
      final String? kategori}) = _$_DaruratKategoryMod;

  factory _DaruratKategoryMod.fromJson(Map<String, dynamic> json) =
      _$_DaruratKategoryMod.fromJson;

  @override
  @JsonKey(name: 'id_kategori')
  String? get idKategory;
  @override
  String? get keterangan;
  @override
  String? get kategori;
  @override
  @JsonKey(ignore: true)
  _$$_DaruratKategoryModCopyWith<_$_DaruratKategoryMod> get copyWith =>
      throw _privateConstructorUsedError;
}
