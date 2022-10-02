// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'homebrew_info_installed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomebrewInfoInstalled _$$_HomebrewInfoInstalledFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_HomebrewInfoInstalled',
      json,
      ($checkedConvert) {
        final val = _$_HomebrewInfoInstalled(
          version: $checkedConvert('version', (v) => v as String? ?? 'unknown'),
          installedOnRequest: $checkedConvert(
              'installed_on_request', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {'installedOnRequest': 'installed_on_request'},
    );

Map<String, dynamic> _$$_HomebrewInfoInstalledToJson(
        _$_HomebrewInfoInstalled instance) =>
    <String, dynamic>{
      'version': instance.version,
      'installed_on_request': instance.installedOnRequest,
    };
