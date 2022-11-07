// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'homebrew_info_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomebrewInfoVersion _$$_HomebrewInfoVersionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_HomebrewInfoVersion',
      json,
      ($checkedConvert) {
        final val = _$_HomebrewInfoVersion(
          stable: $checkedConvert('stable', (v) => v as String? ?? 'unknown'),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_HomebrewInfoVersionToJson(
        _$_HomebrewInfoVersion instance) =>
    <String, dynamic>{
      'stable': instance.stable,
    };
