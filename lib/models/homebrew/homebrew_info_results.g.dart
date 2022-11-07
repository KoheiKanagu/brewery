// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'homebrew_info_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomebrewInfoResults _$$_HomebrewInfoResultsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_HomebrewInfoResults',
      json,
      ($checkedConvert) {
        final val = _$_HomebrewInfoResults(
          info: $checkedConvert(
              'info',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) =>
                          HomebrewInfo.fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  const []),
          lastCheckDateTime: $checkedConvert('lastCheckDateTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_HomebrewInfoResultsToJson(
        _$_HomebrewInfoResults instance) =>
    <String, dynamic>{
      'info': instance.info.map((e) => e.toJson()).toList(),
      'lastCheckDateTime': instance.lastCheckDateTime?.toIso8601String(),
    };
