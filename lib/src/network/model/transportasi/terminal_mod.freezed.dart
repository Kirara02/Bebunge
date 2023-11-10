// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terminal_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TerminalMod _$TerminalModFromJson(Map<String, dynamic> json) {
  return _TerminalMod.fromJson(json);
}

/// @nodoc
mixin _$TerminalMod {
  int? get id => throw _privateConstructorUsedError;
  String? get kode => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  String? get tipe => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TerminalModCopyWith<TerminalMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminalModCopyWith<$Res> {
  factory $TerminalModCopyWith(
          TerminalMod value, $Res Function(TerminalMod) then) =
      _$TerminalModCopyWithImpl<$Res, TerminalMod>;
  @useResult
  $Res call(
      {int? id,
      String? kode,
      String? nama,
      String? tipe,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$TerminalModCopyWithImpl<$Res, $Val extends TerminalMod>
    implements $TerminalModCopyWith<$Res> {
  _$TerminalModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kode = freezed,
    Object? nama = freezed,
    Object? tipe = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      tipe: freezed == tipe
          ? _value.tipe
          : tipe // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TerminalModCopyWith<$Res>
    implements $TerminalModCopyWith<$Res> {
  factory _$$_TerminalModCopyWith(
          _$_TerminalMod value, $Res Function(_$_TerminalMod) then) =
      __$$_TerminalModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? kode,
      String? nama,
      String? tipe,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$_TerminalModCopyWithImpl<$Res>
    extends _$TerminalModCopyWithImpl<$Res, _$_TerminalMod>
    implements _$$_TerminalModCopyWith<$Res> {
  __$$_TerminalModCopyWithImpl(
      _$_TerminalMod _value, $Res Function(_$_TerminalMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? kode = freezed,
    Object? nama = freezed,
    Object? tipe = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_TerminalMod(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      tipe: freezed == tipe
          ? _value.tipe
          : tipe // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TerminalMod implements _TerminalMod {
  _$_TerminalMod(
      {this.id,
      this.kode,
      this.nama,
      this.tipe,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$_TerminalMod.fromJson(Map<String, dynamic> json) =>
      _$$_TerminalModFromJson(json);

  @override
  final int? id;
  @override
  final String? kode;
  @override
  final String? nama;
  @override
  final String? tipe;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'TerminalMod(id: $id, kode: $kode, nama: $nama, tipe: $tipe, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TerminalMod &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kode, kode) || other.kode == kode) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.tipe, tipe) || other.tipe == tipe) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, kode, nama, tipe, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TerminalModCopyWith<_$_TerminalMod> get copyWith =>
      __$$_TerminalModCopyWithImpl<_$_TerminalMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TerminalModToJson(
      this,
    );
  }
}

abstract class _TerminalMod implements TerminalMod {
  factory _TerminalMod(
      {final int? id,
      final String? kode,
      final String? nama,
      final String? tipe,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt}) = _$_TerminalMod;

  factory _TerminalMod.fromJson(Map<String, dynamic> json) =
      _$_TerminalMod.fromJson;

  @override
  int? get id;
  @override
  String? get kode;
  @override
  String? get nama;
  @override
  String? get tipe;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TerminalModCopyWith<_$_TerminalMod> get copyWith =>
      throw _privateConstructorUsedError;
}
