// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AboutMod _$AboutModFromJson(Map<String, dynamic> json) {
  return _AboutMod.fromJson(json);
}

/// @nodoc
mixin _$AboutMod {
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutModCopyWith<AboutMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutModCopyWith<$Res> {
  factory $AboutModCopyWith(AboutMod value, $Res Function(AboutMod) then) =
      _$AboutModCopyWithImpl<$Res, AboutMod>;
  @useResult
  $Res call({String? title, String? slug, String? content});
}

/// @nodoc
class _$AboutModCopyWithImpl<$Res, $Val extends AboutMod>
    implements $AboutModCopyWith<$Res> {
  _$AboutModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? slug = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AboutModCopyWith<$Res> implements $AboutModCopyWith<$Res> {
  factory _$$_AboutModCopyWith(
          _$_AboutMod value, $Res Function(_$_AboutMod) then) =
      __$$_AboutModCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? slug, String? content});
}

/// @nodoc
class __$$_AboutModCopyWithImpl<$Res>
    extends _$AboutModCopyWithImpl<$Res, _$_AboutMod>
    implements _$$_AboutModCopyWith<$Res> {
  __$$_AboutModCopyWithImpl(
      _$_AboutMod _value, $Res Function(_$_AboutMod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? slug = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_AboutMod(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AboutMod implements _AboutMod {
  _$_AboutMod({this.title, this.slug, this.content});

  factory _$_AboutMod.fromJson(Map<String, dynamic> json) =>
      _$$_AboutModFromJson(json);

  @override
  final String? title;
  @override
  final String? slug;
  @override
  final String? content;

  @override
  String toString() {
    return 'AboutMod(title: $title, slug: $slug, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AboutMod &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, slug, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AboutModCopyWith<_$_AboutMod> get copyWith =>
      __$$_AboutModCopyWithImpl<_$_AboutMod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AboutModToJson(
      this,
    );
  }
}

abstract class _AboutMod implements AboutMod {
  factory _AboutMod(
      {final String? title,
      final String? slug,
      final String? content}) = _$_AboutMod;

  factory _AboutMod.fromJson(Map<String, dynamic> json) = _$_AboutMod.fromJson;

  @override
  String? get title;
  @override
  String? get slug;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$_AboutModCopyWith<_$_AboutMod> get copyWith =>
      throw _privateConstructorUsedError;
}
