// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboard_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnboardMod _$OnboardModFromJson(Map<String, dynamic> json) {
  return _OnboardMod.fromJson(json);
}

/// @nodoc
mixin _$OnboardMod {
  int? get id => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  int? get urutan => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;
  String? get gambar => throw _privateConstructorUsedError;
  int? get aktif => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardModCopyWith<OnboardMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardModCopyWith<$Res> {
  factory $OnboardModCopyWith(
          OnboardMod value, $Res Function(OnboardMod) then) =
      _$OnboardModCopyWithImpl<$Res, OnboardMod>;
  @useResult
  $Res call(
      {int? id,
      String? slug,
      String? nama,
      int? urutan,
      String? deskripsi,
      String? gambar,
      int? aktif});
}

/// @nodoc
class _$OnboardModCopyWithImpl<$Res, $Val extends OnboardMod>
    implements $OnboardModCopyWith<$Res> {
  _$OnboardModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? nama = freezed,
    Object? urutan = freezed,
    Object? deskripsi = freezed,
    Object? gambar = freezed,
    Object? aktif = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      urutan: freezed == urutan
          ? _value.urutan
          : urutan // ignore: cast_nullable_to_non_nullable
              as int?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      gambar: freezed == gambar
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String?,
      aktif: freezed == aktif
          ? _value.aktif
          : aktif // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnboardModCopyWith<$Res>
    implements $OnboardModCopyWith<$Res> {
  factory _$$_OnboardModCopyWith(
          _$_OnboardMod value, $Res Function(_$_OnboardMod) then) =
      __$$_OnboardModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? slug,
      String? nama,
      int? urutan,
      String? deskripsi,
      String? gambar,
      int? aktif});
}

/// @nodoc
class __$$_OnboardModCopyWithImpl<$Res>
    extends _$OnboardModCopyWithImpl<$Res, _$_OnboardMod>
    implements _$$_OnboardModCopyWith<$Res> {
  __$$_OnboardModCopyWithImpl(
      _$_OnboardMod _value, $Res Function(_$_OnboardMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? nama = freezed,
    Object? urutan = freezed,
    Object? deskripsi = freezed,
    Object? gambar = freezed,
    Object? aktif = freezed,
  }) {
    return _then(_$_OnboardMod(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      urutan: freezed == urutan
          ? _value.urutan
          : urutan // ignore: cast_nullable_to_non_nullable
              as int?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      gambar: freezed == gambar
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String?,
      aktif: freezed == aktif
          ? _value.aktif
          : aktif // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OnboardMod implements _OnboardMod {
  _$_OnboardMod(
      {this.id,
      this.slug,
      this.nama,
      this.urutan,
      this.deskripsi,
      this.gambar,
      this.aktif});

  factory _$_OnboardMod.fromJson(Map<String, dynamic> json) =>
      _$$_OnboardModFromJson(json);

  @override
  final int? id;
  @override
  final String? slug;
  @override
  final String? nama;
  @override
  final int? urutan;
  @override
  final String? deskripsi;
  @override
  final String? gambar;
  @override
  final int? aktif;

  @override
  String toString() {
    return 'OnboardMod(id: $id, slug: $slug, nama: $nama, urutan: $urutan, deskripsi: $deskripsi, gambar: $gambar, aktif: $aktif)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardMod &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.urutan, urutan) || other.urutan == urutan) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.gambar, gambar) || other.gambar == gambar) &&
            (identical(other.aktif, aktif) || other.aktif == aktif));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, slug, nama, urutan, deskripsi, gambar, aktif);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardModCopyWith<_$_OnboardMod> get copyWith =>
      __$$_OnboardModCopyWithImpl<_$_OnboardMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnboardModToJson(
      this,
    );
  }
}

abstract class _OnboardMod implements OnboardMod {
  factory _OnboardMod(
      {final int? id,
      final String? slug,
      final String? nama,
      final int? urutan,
      final String? deskripsi,
      final String? gambar,
      final int? aktif}) = _$_OnboardMod;

  factory _OnboardMod.fromJson(Map<String, dynamic> json) =
      _$_OnboardMod.fromJson;

  @override
  int? get id;
  @override
  String? get slug;
  @override
  String? get nama;
  @override
  int? get urutan;
  @override
  String? get deskripsi;
  @override
  String? get gambar;
  @override
  int? get aktif;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardModCopyWith<_$_OnboardMod> get copyWith =>
      throw _privateConstructorUsedError;
}
