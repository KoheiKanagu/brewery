import 'package:brewery/controllers/shared_preference_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final nextFetchTimeController =
    StateNotifierProvider<NextFetchTimeController, DateTime?>(
  (ref) => NextFetchTimeController(
    ref.watch(sharedPreferences),
  ),
  name: 'nextFetchTimeController',
);

class NextFetchTimeController extends StateNotifier<DateTime?> {
  NextFetchTimeController(this.sharedPreferences)
      : super(
          DateTime.tryParse(
                sharedPreferences.getString(
                      SharedPreferenceKey.nextFetchTime.name,
                    ) ??
                    '',
              ) ??
              DateTime.now(),
        );

  final SharedPreferences sharedPreferences;

  @override
  set state(DateTime? value) {
    super.state = value;

    if (value == null) {
      sharedPreferences.remove(
        SharedPreferenceKey.nextFetchTime.name,
      );
    } else {
      sharedPreferences.setString(
        SharedPreferenceKey.nextFetchTime.name,
        value.toIso8601String(),
      );
    }
  }
}
