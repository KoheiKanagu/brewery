import 'package:brewery/models/homebrew/homebrew_info_installed.dart';
import 'package:brewery/models/homebrew/homebrew_info_version.dart';
import 'package:brewery/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homebrew_info.freezed.dart';
part 'homebrew_info.g.dart';

@freezed
class HomebrewInfo with _$HomebrewInfo {
  const factory HomebrewInfo({
    @Default('unknown') String name,
    @Default(HomebrewInfoVersion()) HomebrewInfoVersion versions,
    @Default([]) HomebrewInfoInstalled installed,
    @Default(false) bool outdated,
  }) = _HomebrewInfo;

  factory HomebrewInfo.fromJson(Json json) => _$HomebrewInfoFromJson(json);
}
