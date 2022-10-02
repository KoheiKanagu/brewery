// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'homebrew_info_installed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomebrewInfoInstalled _$HomebrewInfoInstalledFromJson(
    Map<String, dynamic> json) {
  return _HomebrewInfoInstalled.fromJson(json);
}

/// @nodoc
mixin _$HomebrewInfoInstalled {
  String get version => throw _privateConstructorUsedError;
  bool get installedOnRequest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomebrewInfoInstalledCopyWith<HomebrewInfoInstalled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomebrewInfoInstalledCopyWith<$Res> {
  factory $HomebrewInfoInstalledCopyWith(HomebrewInfoInstalled value,
          $Res Function(HomebrewInfoInstalled) then) =
      _$HomebrewInfoInstalledCopyWithImpl<$Res>;
  $Res call({String version, bool installedOnRequest});
}

/// @nodoc
class _$HomebrewInfoInstalledCopyWithImpl<$Res>
    implements $HomebrewInfoInstalledCopyWith<$Res> {
  _$HomebrewInfoInstalledCopyWithImpl(this._value, this._then);

  final HomebrewInfoInstalled _value;
  // ignore: unused_field
  final $Res Function(HomebrewInfoInstalled) _then;

  @override
  $Res call({
    Object? version = freezed,
    Object? installedOnRequest = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      installedOnRequest: installedOnRequest == freezed
          ? _value.installedOnRequest
          : installedOnRequest // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_HomebrewInfoInstalledCopyWith<$Res>
    implements $HomebrewInfoInstalledCopyWith<$Res> {
  factory _$$_HomebrewInfoInstalledCopyWith(_$_HomebrewInfoInstalled value,
          $Res Function(_$_HomebrewInfoInstalled) then) =
      __$$_HomebrewInfoInstalledCopyWithImpl<$Res>;
  @override
  $Res call({String version, bool installedOnRequest});
}

/// @nodoc
class __$$_HomebrewInfoInstalledCopyWithImpl<$Res>
    extends _$HomebrewInfoInstalledCopyWithImpl<$Res>
    implements _$$_HomebrewInfoInstalledCopyWith<$Res> {
  __$$_HomebrewInfoInstalledCopyWithImpl(_$_HomebrewInfoInstalled _value,
      $Res Function(_$_HomebrewInfoInstalled) _then)
      : super(_value, (v) => _then(v as _$_HomebrewInfoInstalled));

  @override
  _$_HomebrewInfoInstalled get _value =>
      super._value as _$_HomebrewInfoInstalled;

  @override
  $Res call({
    Object? version = freezed,
    Object? installedOnRequest = freezed,
  }) {
    return _then(_$_HomebrewInfoInstalled(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      installedOnRequest: installedOnRequest == freezed
          ? _value.installedOnRequest
          : installedOnRequest // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomebrewInfoInstalled implements _HomebrewInfoInstalled {
  const _$_HomebrewInfoInstalled(
      {this.version = 'unknown', this.installedOnRequest = false});

  factory _$_HomebrewInfoInstalled.fromJson(Map<String, dynamic> json) =>
      _$$_HomebrewInfoInstalledFromJson(json);

  @override
  @JsonKey()
  final String version;
  @override
  @JsonKey()
  final bool installedOnRequest;

  @override
  String toString() {
    return 'HomebrewInfoInstalled(version: $version, installedOnRequest: $installedOnRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomebrewInfoInstalled &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality()
                .equals(other.installedOnRequest, installedOnRequest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(installedOnRequest));

  @JsonKey(ignore: true)
  @override
  _$$_HomebrewInfoInstalledCopyWith<_$_HomebrewInfoInstalled> get copyWith =>
      __$$_HomebrewInfoInstalledCopyWithImpl<_$_HomebrewInfoInstalled>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomebrewInfoInstalledToJson(
      this,
    );
  }
}

abstract class _HomebrewInfoInstalled implements HomebrewInfoInstalled {
  const factory _HomebrewInfoInstalled(
      {final String version,
      final bool installedOnRequest}) = _$_HomebrewInfoInstalled;

  factory _HomebrewInfoInstalled.fromJson(Map<String, dynamic> json) =
      _$_HomebrewInfoInstalled.fromJson;

  @override
  String get version;
  @override
  bool get installedOnRequest;
  @override
  @JsonKey(ignore: true)
  _$$_HomebrewInfoInstalledCopyWith<_$_HomebrewInfoInstalled> get copyWith =>
      throw _privateConstructorUsedError;
}
