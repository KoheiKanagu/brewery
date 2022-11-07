import 'package:brewery/models/homebrew/homebrew_info.dart';
import 'package:brewery/typedefs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homebrew_info_results.freezed.dart';
part 'homebrew_info_results.g.dart';

@freezed
class HomebrewInfoResults with _$HomebrewInfoResults {
  const factory HomebrewInfoResults({
    @Default([]) List<HomebrewInfo> info,
    DateTime? lastCheckDateTime,
  }) = _HomebrewInfoResults;

  const HomebrewInfoResults._();

  factory HomebrewInfoResults.fromJson(Json json) =>
      _$HomebrewInfoResultsFromJson(json);

  factory HomebrewInfoResults.create(
    List<HomebrewInfo> info,
  ) =>
      HomebrewInfoResults(
        info: info,
        lastCheckDateTime: DateTime.now(),
      );
}
