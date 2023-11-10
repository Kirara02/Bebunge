// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beranda_slider_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BerandaSliderMod _$BerandaSliderModFromJson(Map<String, dynamic> json) {
  return _BerandaSliderMod.fromJson(json);
}

/// @nodoc
mixin _$BerandaSliderMod {
  int? get id => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;
  String? get gambar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BerandaSliderModCopyWith<BerandaSliderMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BerandaSliderModCopyWith<$Res> {
  factory $BerandaSliderModCopyWith(
          BerandaSliderMod value, $Res Function(BerandaSliderMod) then) =
      _$BerandaSliderModCopyWithImpl<$Res, BerandaSliderMod>;
  @useResult
  $Res call({int? id, String? nama, String? deskripsi, String? gambar});
}

/// @nodoc
class _$BerandaSliderModCopyWithImpl<$Res, $Val extends BerandaSliderMod>
    implements $BerandaSliderModCopyWith<$Res> {
  _$BerandaSliderModCopyWithImpl(this._value, this._then);

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
abstract class _$$_BerandaSliderModCopyWith<$Res>
    implements $BerandaSliderModCopyWith<$Res> {
  factory _$$_BerandaSliderModCopyWith(
          _$_BerandaSliderMod value, $Res Function(_$_BerandaSliderMod) then) =
      __$$_BerandaSliderModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? nama, String? deskripsi, String? gambar});
}

/// @nodoc
class __$$_BerandaSliderModCopyWithImpl<$Res>
    extends _$BerandaSliderModCopyWithImpl<$Res, _$_BerandaSliderMod>
    implements _$$_BerandaSliderModCopyWith<$Res> {
  __$$_BerandaSliderModCopyWithImpl(
      _$_BerandaSliderMod _value, $Res Function(_$_BerandaSliderMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nama = freezed,
    Object? deskripsi = freezed,
    Object? gambar = freezed,
  }) {
    return _then(_$_BerandaSliderMod(
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
class _$_BerandaSliderMod implements _BerandaSliderMod {
  _$_BerandaSliderMod(
      {this.id = 0, this.nama = '', this.deskripsi = '', this.gambar = ''});

  factory _$_BerandaSliderMod.fromJson(Map<String, dynamic> json) =>
      _$$_BerandaSliderModFromJson(json);

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
    return 'BerandaSliderMod(id: $id, nama: $nama, deskripsi: $deskripsi, gambar: $gambar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BerandaSliderMod &&
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
  _$$_BerandaSliderModCopyWith<_$_BerandaSliderMod> get copyWith =>
      __$$_BerandaSliderModCopyWithImpl<_$_BerandaSliderMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BerandaSliderModToJson(
      this,
    );
  }
}

abstract class _BerandaSliderMod implements BerandaSliderMod {
  factory _BerandaSliderMod(
      {final int? id,
      final String? nama,
      final String? deskripsi,
      final String? gambar}) = _$_BerandaSliderMod;

  factory _BerandaSliderMod.fromJson(Map<String, dynamic> json) =
      _$_BerandaSliderMod.fromJson;

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
  _$$_BerandaSliderModCopyWith<_$_BerandaSliderMod> get copyWith =>
      throw _privateConstructorUsedError;
}
