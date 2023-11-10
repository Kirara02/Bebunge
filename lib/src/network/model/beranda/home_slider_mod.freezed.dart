// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_slider_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeSlideMod _$HomeSlideModFromJson(Map<String, dynamic> json) {
  return _HomeSlideMod.fromJson(json);
}

/// @nodoc
mixin _$HomeSlideMod {
  int? get id => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;
  String? get gambar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeSlideModCopyWith<HomeSlideMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeSlideModCopyWith<$Res> {
  factory $HomeSlideModCopyWith(
          HomeSlideMod value, $Res Function(HomeSlideMod) then) =
      _$HomeSlideModCopyWithImpl<$Res, HomeSlideMod>;
  @useResult
  $Res call({int? id, String? nama, String? deskripsi, String? gambar});
}

/// @nodoc
class _$HomeSlideModCopyWithImpl<$Res, $Val extends HomeSlideMod>
    implements $HomeSlideModCopyWith<$Res> {
  _$HomeSlideModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? deskripsi = freezed,
    Object? gambar = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      gambar: freezed == gambar
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeSlideModCopyWith<$Res>
    implements $HomeSlideModCopyWith<$Res> {
  factory _$$_HomeSlideModCopyWith(
          _$_HomeSlideMod value, $Res Function(_$_HomeSlideMod) then) =
      __$$_HomeSlideModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? nama, String? deskripsi, String? gambar});
}

/// @nodoc
class __$$_HomeSlideModCopyWithImpl<$Res>
    extends _$HomeSlideModCopyWithImpl<$Res, _$_HomeSlideMod>
    implements _$$_HomeSlideModCopyWith<$Res> {
  __$$_HomeSlideModCopyWithImpl(
      _$_HomeSlideMod _value, $Res Function(_$_HomeSlideMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? deskripsi = freezed,
    Object? gambar = freezed,
  }) {
    return _then(_$_HomeSlideMod(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      gambar: freezed == gambar
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeSlideMod implements _HomeSlideMod {
  _$_HomeSlideMod(
      {this.id = 0, this.nama = '', this.deskripsi = '', this.gambar = ''});

  factory _$_HomeSlideMod.fromJson(Map<String, dynamic> json) =>
      _$$_HomeSlideModFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? nama;
  @override
  @JsonKey()
  final String? deskripsi;
  @override
  @JsonKey()
  final String? gambar;

  @override
  String toString() {
    return 'HomeSlideMod(id: $id, nama: $nama, deskripsi: $deskripsi, gambar: $gambar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeSlideMod &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.gambar, gambar) || other.gambar == gambar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nama, deskripsi, gambar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeSlideModCopyWith<_$_HomeSlideMod> get copyWith =>
      __$$_HomeSlideModCopyWithImpl<_$_HomeSlideMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeSlideModToJson(
      this,
    );
  }
}

abstract class _HomeSlideMod implements HomeSlideMod {
  factory _HomeSlideMod(
      {final int? id,
      final String? nama,
      final String? deskripsi,
      final String? gambar}) = _$_HomeSlideMod;

  factory _HomeSlideMod.fromJson(Map<String, dynamic> json) =
      _$_HomeSlideMod.fromJson;

  @override
  int? get id;
  @override
  String? get nama;
  @override
  String? get deskripsi;
  @override
  String? get gambar;
  @override
  @JsonKey(ignore: true)
  _$$_HomeSlideModCopyWith<_$_HomeSlideMod> get copyWith =>
      throw _privateConstructorUsedError;
}
