// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'homebrew_info_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomebrewInfoVersion _$HomebrewInfoVersionFromJson(Map<String, dynamic> json) {
  return _HomebrewInfoVersion.fromJson(json);
}

/// @nodoc
mixin _$HomebrewInfoVersion {
  String get stable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomebrewInfoVersionCopyWith<HomebrewInfoVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomebrewInfoVersionCopyWith<$Res> {
  factory $HomebrewInfoVersionCopyWith(
          HomebrewInfoVersion value, $Res Function(HomebrewInfoVersion) then) =
      _$HomebrewInfoVersionCopyWithImpl<$Res>;
  $Res call({String stable});
}

/// @nodoc
class _$HomebrewInfoVersionCopyWithImpl<$Res>
    implements $HomebrewInfoVersionCopyWith<$Res> {
  _$HomebrewInfoVersionCopyWithImpl(this._value, this._then);

  final HomebrewInfoVersion _value;
  // ignore: unused_field
  final $Res Function(HomebrewInfoVersion) _then;

  @override
  $Res call({
    Object? stable = freezed,
  }) {
    return _then(_value.copyWith(
      stable: stable == freezed
          ? _value.stable
          : stable // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_HomebrewInfoVersionCopyWith<$Res>
    implements $HomebrewInfoVersionCopyWith<$Res> {
  factory _$$_HomebrewInfoVersionCopyWith(_$_HomebrewInfoVersion value,
          $Res Function(_$_HomebrewInfoVersion) then) =
      __$$_HomebrewInfoVersionCopyWithImpl<$Res>;
  @override
  $Res call({String stable});
}

/// @nodoc
class __$$_HomebrewInfoVersionCopyWithImpl<$Res>
    extends _$HomebrewInfoVersionCopyWithImpl<$Res>
    implements _$$_HomebrewInfoVersionCopyWith<$Res> {
  __$$_HomebrewInfoVersionCopyWithImpl(_$_HomebrewInfoVersion _value,
      $Res Function(_$_HomebrewInfoVersion) _then)
      : super(_value, (v) => _then(v as _$_HomebrewInfoVersion));

  @override
  _$_HomebrewInfoVersion get _value => super._value as _$_HomebrewInfoVersion;

  @override
  $Res call({
    Object? stable = freezed,
  }) {
    return _then(_$_HomebrewInfoVersion(
      stable: stable == freezed
          ? _value.stable
          : stable // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomebrewInfoVersion implements _HomebrewInfoVersion {
  const _$_HomebrewInfoVersion({this.stable = 'unknown'});

  factory _$_HomebrewInfoVersion.fromJson(Map<String, dynamic> json) =>
      _$$_HomebrewInfoVersionFromJson(json);

  @override
  @JsonKey()
  final String stable;

  @override
  String toString() {
    return 'HomebrewInfoVersion(stable: $stable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomebrewInfoVersion &&
            const DeepCollectionEquality().equals(other.stable, stable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(stable));

  @JsonKey(ignore: true)
  @override
  _$$_HomebrewInfoVersionCopyWith<_$_HomebrewInfoVersion> get copyWith =>
      __$$_HomebrewInfoVersionCopyWithImpl<_$_HomebrewInfoVersion>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomebrewInfoVersionToJson(
      this,
    );
  }
}

abstract class _HomebrewInfoVersion implements HomebrewInfoVersion {
  const factory _HomebrewInfoVersion({final String stable}) =
      _$_HomebrewInfoVersion;

  factory _HomebrewInfoVersion.fromJson(Map<String, dynamic> json) =
      _$_HomebrewInfoVersion.fromJson;

  @override
  String get stable;
  @override
  @JsonKey(ignore: true)
  _$$_HomebrewInfoVersionCopyWith<_$_HomebrewInfoVersion> get copyWith =>
      throw _privateConstructorUsedError;
}
