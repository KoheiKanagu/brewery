// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'homebrew_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomebrewInfo _$$_HomebrewInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_HomebrewInfo',
      json,
      ($checkedConvert) {
        final val = _$_HomebrewInfo(
          name: $checkedConvert('name', (v) => v as String? ?? 'unknown'),
          versions: $checkedConvert(
              'versions',
              (v) => v == null
                  ? const HomebrewInfoVersion()
                  : HomebrewInfoVersion.fromJson(v as Map<String, dynamic>)),
          installed: $checkedConvert(
              'installed',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => HomebrewInfoInstalled.fromJson(
                          e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          outdated: $checkedConvert('outdated', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_HomebrewInfoToJson(_$_HomebrewInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'versions': instance.versions.toJson(),
      'installed': instance.installed.map((e) => e.toJson()).toList(),
      'outdated': instance.outdated,
    };
