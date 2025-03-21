import 'package:brewery/utils/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homebrew_info_version.freezed.dart';
part 'homebrew_info_version.g.dart';

@freezed
class HomebrewInfoVersion with _$HomebrewInfoVersion {
  const factory HomebrewInfoVersion({
    @Default('unknown') String stable,
  }) = _HomebrewInfoVersion;

  factory HomebrewInfoVersion.fromJson(Json json) =>
      _$HomebrewInfoVersionFromJson(json);
}
