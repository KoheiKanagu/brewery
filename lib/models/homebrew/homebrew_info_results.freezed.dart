// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'homebrew_info_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomebrewInfoResults _$HomebrewInfoResultsFromJson(Map<String, dynamic> json) {
  return _HomebrewInfoResults.fromJson(json);
}

/// @nodoc
mixin _$HomebrewInfoResults {
  List<HomebrewInfo> get info => throw _privateConstructorUsedError;
  DateTime? get lastCheckDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomebrewInfoResultsCopyWith<HomebrewInfoResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomebrewInfoResultsCopyWith<$Res> {
  factory $HomebrewInfoResultsCopyWith(
          HomebrewInfoResults value, $Res Function(HomebrewInfoResults) then) =
      _$HomebrewInfoResultsCopyWithImpl<$Res>;
  $Res call({List<HomebrewInfo> info, DateTime? lastCheckDateTime});
}

/// @nodoc
class _$HomebrewInfoResultsCopyWithImpl<$Res>
    implements $HomebrewInfoResultsCopyWith<$Res> {
  _$HomebrewInfoResultsCopyWithImpl(this._value, this._then);

  final HomebrewInfoResults _value;
  // ignore: unused_field
  final $Res Function(HomebrewInfoResults) _then;

  @override
  $Res call({
    Object? info = freezed,
    Object? lastCheckDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as List<HomebrewInfo>,
      lastCheckDateTime: lastCheckDateTime == freezed
          ? _value.lastCheckDateTime
          : lastCheckDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_HomebrewInfoResultsCopyWith<$Res>
    implements $HomebrewInfoResultsCopyWith<$Res> {
  factory _$$_HomebrewInfoResultsCopyWith(_$_HomebrewInfoResults value,
          $Res Function(_$_HomebrewInfoResults) then) =
      __$$_HomebrewInfoResultsCopyWithImpl<$Res>;
  @override
  $Res call({List<HomebrewInfo> info, DateTime? lastCheckDateTime});
}

/// @nodoc
class __$$_HomebrewInfoResultsCopyWithImpl<$Res>
    extends _$HomebrewInfoResultsCopyWithImpl<$Res>
    implements _$$_HomebrewInfoResultsCopyWith<$Res> {
  __$$_HomebrewInfoResultsCopyWithImpl(_$_HomebrewInfoResults _value,
      $Res Function(_$_HomebrewInfoResults) _then)
      : super(_value, (v) => _then(v as _$_HomebrewInfoResults));

  @override
  _$_HomebrewInfoResults get _value => super._value as _$_HomebrewInfoResults;

  @override
  $Res call({
    Object? info = freezed,
    Object? lastCheckDateTime = freezed,
  }) {
    return _then(_$_HomebrewInfoResults(
      info: info == freezed
          ? _value._info
          : info // ignore: cast_nullable_to_non_nullable
              as List<HomebrewInfo>,
      lastCheckDateTime: lastCheckDateTime == freezed
          ? _value.lastCheckDateTime
          : lastCheckDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomebrewInfoResults extends _HomebrewInfoResults {
  const _$_HomebrewInfoResults(
      {final List<HomebrewInfo> info = const [], this.lastCheckDateTime})
      : _info = info,
        super._();

  factory _$_HomebrewInfoResults.fromJson(Map<String, dynamic> json) =>
      _$$_HomebrewInfoResultsFromJson(json);

  final List<HomebrewInfo> _info;
  @override
  @JsonKey()
  List<HomebrewInfo> get info {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_info);
  }

  @override
  final DateTime? lastCheckDateTime;

  @override
  String toString() {
    return 'HomebrewInfoResults(info: $info, lastCheckDateTime: $lastCheckDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomebrewInfoResults &&
            const DeepCollectionEquality().equals(other._info, _info) &&
            const DeepCollectionEquality()
                .equals(other.lastCheckDateTime, lastCheckDateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_info),
      const DeepCollectionEquality().hash(lastCheckDateTime));

  @JsonKey(ignore: true)
  @override
  _$$_HomebrewInfoResultsCopyWith<_$_HomebrewInfoResults> get copyWith =>
      __$$_HomebrewInfoResultsCopyWithImpl<_$_HomebrewInfoResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomebrewInfoResultsToJson(
      this,
    );
  }
}

abstract class _HomebrewInfoResults extends HomebrewInfoResults {
  const factory _HomebrewInfoResults(
      {final List<HomebrewInfo> info,
      final DateTime? lastCheckDateTime}) = _$_HomebrewInfoResults;
  const _HomebrewInfoResults._() : super._();

  factory _HomebrewInfoResults.fromJson(Map<String, dynamic> json) =
      _$_HomebrewInfoResults.fromJson;

  @override
  List<HomebrewInfo> get info;
  @override
  DateTime? get lastCheckDateTime;
  @override
  @JsonKey(ignore: true)
  _$$_HomebrewInfoResultsCopyWith<_$_HomebrewInfoResults> get copyWith =>
      throw _privateConstructorUsedError;
}
