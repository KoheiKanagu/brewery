import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferences = Provider<SharedPreferences>(
  (_) => throw UnimplementedError(),
);

enum SharedPreferenceKey {
  nextFetchTime,
  fetchIntervalMinutes,
  ;
}
