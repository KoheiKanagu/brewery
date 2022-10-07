import 'package:brewery/controllers/shared_preference_controller.dart';
import 'package:brewery/models/schedule_interval.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final fetchIntervalController =
    StateNotifierProvider<FetchIntervalController, ScheduleInterval>(
  (ref) => FetchIntervalController(
    ref.watch(sharedPreferences),
  ),
  name: 'fetchIntervalController',
);

class FetchIntervalController extends StateNotifier<ScheduleInterval> {
  FetchIntervalController(this.sharedPreferences)
      : super(
          ScheduleInterval.fromMinutes(
            sharedPreferences
                .getInt(SharedPreferenceKey.fetchIntervalMinutes.name),
          ),
        );

  final SharedPreferences sharedPreferences;

  @override
  set state(ScheduleInterval value) {
    super.state = value;

    sharedPreferences.setInt(
      SharedPreferenceKey.fetchIntervalMinutes.name,
      value.minutes,
    );
  }
}
