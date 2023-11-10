// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fasilitas_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FasilitasItem _$FasilitasItemFromJson(Map<String, dynamic> json) {
  return _FasilitasItem.fromJson(json);
}

/// @nodoc
mixin _$FasilitasItem {
  int? get id => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;
  String? get gambar => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_at')
  String? get updateAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FasilitasItemCopyWith<FasilitasItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FasilitasItemCopyWith<$Res> {
  factory $FasilitasItemCopyWith(
          FasilitasItem value, $Res Function(FasilitasItem) then) =
      _$FasilitasItemCopyWithImpl<$Res, FasilitasItem>;
  @useResult
  $Res call(
      {int? id,
      String? slug,
      String? nama,
      String? deskripsi,
      String? gambar,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'update_at') String? updateAt});
}

/// @nodoc
class _$FasilitasItemCopyWithImpl<$Res, $Val extends FasilitasItem>
    implements $FasilitasItemCopyWith<$Res> {
  _$FasilitasItemCopyWithImpl(this._value, this._then);

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
    Object? deskripsi = freezed,
    Object? gambar = freezed,
    Object? createdAt = freezed,
    Object? updateAt = freezed,
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
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      gambar: freezed == gambar
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FasilitasItemCopyWith<$Res>
    implements $FasilitasItemCopyWith<$Res> {
  factory _$$_FasilitasItemCopyWith(
          _$_FasilitasItem value, $Res Function(_$_FasilitasItem) then) =
      __$$_FasilitasItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? slug,
      String? nama,
      String? deskripsi,
      String? gambar,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'update_at') String? updateAt});
}

/// @nodoc
class __$$_FasilitasItemCopyWithImpl<$Res>
    extends _$FasilitasItemCopyWithImpl<$Res, _$_FasilitasItem>
    implements _$$_FasilitasItemCopyWith<$Res> {
  __$$_FasilitasItemCopyWithImpl(
      _$_FasilitasItem _value, $Res Function(_$_FasilitasItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? nama = freezed,
    Object? deskripsi = freezed,
    Object? gambar = freezed,
    Object? createdAt = freezed,
    Object? updateAt = freezed,
  }) {
    return _then(_$_FasilitasItem(
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
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      gambar: freezed == gambar
          ? _value.gambar
          : gambar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FasilitasItem implements _FasilitasItem {
  _$_FasilitasItem(
      {this.id,
      this.slug,
      this.nama,
      this.deskripsi,
      this.gambar,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'update_at') this.updateAt});

  factory _$_FasilitasItem.fromJson(Map<String, dynamic> json) =>
      _$$_FasilitasItemFromJson(json);

  @override
  final int? id;
  @override
  final String? slug;
  @override
  final String? nama;
  @override
  final String? deskripsi;
  @override
  final String? gambar;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'update_at')
  final String? updateAt;

  @override
  String toString() {
    return 'FasilitasItem(id: $id, slug: $slug, nama: $nama, deskripsi: $deskripsi, gambar: $gambar, createdAt: $createdAt, updateAt: $updateAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FasilitasItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.gambar, gambar) || other.gambar == gambar) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, slug, nama, deskripsi, gambar, createdAt, updateAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FasilitasItemCopyWith<_$_FasilitasItem> get copyWith =>
      __$$_FasilitasItemCopyWithImpl<_$_FasilitasItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FasilitasItemToJson(
      this,
    );
  }
}

abstract class _FasilitasItem implements FasilitasItem {
  factory _FasilitasItem(
      {final int? id,
      final String? slug,
      final String? nama,
      final String? deskripsi,
      final String? gambar,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'update_at') final String? updateAt}) = _$_FasilitasItem;

  factory _FasilitasItem.fromJson(Map<String, dynamic> json) =
      _$_FasilitasItem.fromJson;

  @override
  int? get id;
  @override
  String? get slug;
  @override
  String? get nama;
  @override
  String? get deskripsi;
  @override
  String? get gambar;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'update_at')
  String? get updateAt;
  @override
  @JsonKey(ignore: true)
  _$$_FasilitasItemCopyWith<_$_FasilitasItem> get copyWith =>
      throw _privateConstructorUsedError;
}
