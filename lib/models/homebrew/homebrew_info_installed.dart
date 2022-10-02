import 'package:brewery/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homebrew_info_installed.freezed.dart';
part 'homebrew_info_installed.g.dart';

@freezed
class HomebrewInfoInstalled with _$HomebrewInfoInstalled {
  const factory HomebrewInfoInstalled({
    @Default('unknown') String version,
    @Default(false) bool installedOnRequest,
  }) = _HomebrewInfoInstalled;

  factory HomebrewInfoInstalled.fromJson(Json json) =>
      _$HomebrewInfoInstalledFromJson(json);
}
