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
          installedOnRequest:
              $checkedConvert('installedOnRequest', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_HomebrewInfoInstalledToJson(
        _$_HomebrewInfoInstalled instance) =>
    <String, dynamic>{
      'version': instance.version,
      'installedOnRequest': instance.installedOnRequest,
    };
