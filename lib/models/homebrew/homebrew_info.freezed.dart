// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'homebrew_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomebrewInfo _$HomebrewInfoFromJson(Map<String, dynamic> json) {
  return _HomebrewInfo.fromJson(json);
}

/// @nodoc
mixin _$HomebrewInfo {
  String get name => throw _privateConstructorUsedError;
  HomebrewInfoVersion get versions => throw _privateConstructorUsedError;
  List<HomebrewInfoInstalled> get installed =>
      throw _privateConstructorUsedError;
  bool get outdated => throw _privateConstructorUsedError;
  String get homepage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomebrewInfoCopyWith<HomebrewInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomebrewInfoCopyWith<$Res> {
  factory $HomebrewInfoCopyWith(
          HomebrewInfo value, $Res Function(HomebrewInfo) then) =
      _$HomebrewInfoCopyWithImpl<$Res>;
  $Res call(
      {String name,
      HomebrewInfoVersion versions,
      List<HomebrewInfoInstalled> installed,
      bool outdated,
      String homepage});

  $HomebrewInfoVersionCopyWith<$Res> get versions;
}

/// @nodoc
class _$HomebrewInfoCopyWithImpl<$Res> implements $HomebrewInfoCopyWith<$Res> {
  _$HomebrewInfoCopyWithImpl(this._value, this._then);

  final HomebrewInfo _value;
  // ignore: unused_field
  final $Res Function(HomebrewInfo) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? versions = freezed,
    Object? installed = freezed,
    Object? outdated = freezed,
    Object? homepage = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      versions: versions == freezed
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as HomebrewInfoVersion,
      installed: installed == freezed
          ? _value.installed
          : installed // ignore: cast_nullable_to_non_nullable
              as List<HomebrewInfoInstalled>,
      outdated: outdated == freezed
          ? _value.outdated
          : outdated // ignore: cast_nullable_to_non_nullable
              as bool,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $HomebrewInfoVersionCopyWith<$Res> get versions {
    return $HomebrewInfoVersionCopyWith<$Res>(_value.versions, (value) {
      return _then(_value.copyWith(versions: value));
    });
  }
}

/// @nodoc
abstract class _$$_HomebrewInfoCopyWith<$Res>
    implements $HomebrewInfoCopyWith<$Res> {
  factory _$$_HomebrewInfoCopyWith(
          _$_HomebrewInfo value, $Res Function(_$_HomebrewInfo) then) =
      __$$_HomebrewInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      HomebrewInfoVersion versions,
      List<HomebrewInfoInstalled> installed,
      bool outdated,
      String homepage});

  @override
  $HomebrewInfoVersionCopyWith<$Res> get versions;
}

/// @nodoc
class __$$_HomebrewInfoCopyWithImpl<$Res>
    extends _$HomebrewInfoCopyWithImpl<$Res>
    implements _$$_HomebrewInfoCopyWith<$Res> {
  __$$_HomebrewInfoCopyWithImpl(
      _$_HomebrewInfo _value, $Res Function(_$_HomebrewInfo) _then)
      : super(_value, (v) => _then(v as _$_HomebrewInfo));

  @override
  _$_HomebrewInfo get _value => super._value as _$_HomebrewInfo;

  @override
  $Res call({
    Object? name = freezed,
    Object? versions = freezed,
    Object? installed = freezed,
    Object? outdated = freezed,
    Object? homepage = freezed,
  }) {
    return _then(_$_HomebrewInfo(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      versions: versions == freezed
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as HomebrewInfoVersion,
      installed: installed == freezed
          ? _value._installed
          : installed // ignore: cast_nullable_to_non_nullable
              as List<HomebrewInfoInstalled>,
      outdated: outdated == freezed
          ? _value.outdated
          : outdated // ignore: cast_nullable_to_non_nullable
              as bool,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomebrewInfo implements _HomebrewInfo {
  const _$_HomebrewInfo(
      {this.name = 'unknown',
      this.versions = const HomebrewInfoVersion(),
      final List<HomebrewInfoInstalled> installed = const [],
      this.outdated = false,
      this.homepage = 'https://brew.sh'})
      : _installed = installed;

  factory _$_HomebrewInfo.fromJson(Map<String, dynamic> json) =>
      _$$_HomebrewInfoFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final HomebrewInfoVersion versions;
  final List<HomebrewInfoInstalled> _installed;
  @override
  @JsonKey()
  List<HomebrewInfoInstalled> get installed {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_installed);
  }

  @override
  @JsonKey()
  final bool outdated;
  @override
  @JsonKey()
  final String homepage;

  @override
  String toString() {
    return 'HomebrewInfo(name: $name, versions: $versions, installed: $installed, outdated: $outdated, homepage: $homepage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomebrewInfo &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.versions, versions) &&
            const DeepCollectionEquality()
                .equals(other._installed, _installed) &&
            const DeepCollectionEquality().equals(other.outdated, outdated) &&
            const DeepCollectionEquality().equals(other.homepage, homepage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(versions),
      const DeepCollectionEquality().hash(_installed),
      const DeepCollectionEquality().hash(outdated),
      const DeepCollectionEquality().hash(homepage));

  @JsonKey(ignore: true)
  @override
  _$$_HomebrewInfoCopyWith<_$_HomebrewInfo> get copyWith =>
      __$$_HomebrewInfoCopyWithImpl<_$_HomebrewInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomebrewInfoToJson(
      this,
    );
  }
}

abstract class _HomebrewInfo implements HomebrewInfo {
  const factory _HomebrewInfo(
      {final String name,
      final HomebrewInfoVersion versions,
      final List<HomebrewInfoInstalled> installed,
      final bool outdated,
      final String homepage}) = _$_HomebrewInfo;

  factory _HomebrewInfo.fromJson(Map<String, dynamic> json) =
      _$_HomebrewInfo.fromJson;

  @override
  String get name;
  @override
  HomebrewInfoVersion get versions;
  @override
  List<HomebrewInfoInstalled> get installed;
  @override
  bool get outdated;
  @override
  String get homepage;
  @override
  @JsonKey(ignore: true)
  _$$_HomebrewInfoCopyWith<_$_HomebrewInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
