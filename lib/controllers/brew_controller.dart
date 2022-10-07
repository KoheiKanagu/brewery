import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:brewery/controllers/fetch_interval_controller.dart';
import 'package:brewery/controllers/next_fetch_time_controller.dart';
import 'package:brewery/models/homebrew/homebrew_info.dart';
import 'package:brewery/models/homebrew/homebrew_info_results.dart';
import 'package:brewery/models/schedule_interval.dart';
import 'package:brewery/provider_logger.dart';
import 'package:brewery/typedefs.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final brewController =
    AsyncNotifierProvider<BrewController, HomebrewInfoResults>(
  BrewController.new,
  name: 'brewController',
);

class BrewController extends AsyncNotifier<HomebrewInfoResults> {
  Timer? nextFetchTimer;

  void onChangedFetchInterval(ScheduleInterval value) {
    ref.read(fetchIntervalController.notifier).state = value;

    ref.read(nextFetchTimeController.notifier).state =
        value == ScheduleInterval.never
            ? null
            : DateTime.now().add(value.duration);
  }

  Future<void> refresh() async {
    state = const AsyncValue<HomebrewInfoResults>.loading().copyWithPrevious(
      state,
    );

    state = await AsyncValue.guard(
      () async {
        final results = build();

        final duration = ref.read(fetchIntervalController).duration;
        ref.read(nextFetchTimeController.notifier).state =
            DateTime.now().add(duration);

        return results;
      },
    );
  }

  @visibleForTesting
  Future<HomebrewInfoResults> fetchInfo() async {
    final updateResults = await Process.run(
      'brew',
      [
        'update',
      ],
    );
    logger.d(updateResults.stdout);

    final results = (await Process.run(
      'brew',
      [
        'info',
        '--json',
        '--installed',
      ],
    ))
        .stdout as String;

    return HomebrewInfoResults.create(
      (json.decode(results) as List<dynamic>)
          .whereType<Json>()
          .map(HomebrewInfo.fromJson)
          .where((e) => e.outdated)
          .where(
            (e) => e.installed.single.installedOnRequest,
          )
          .toList(),
    );
  }

  @override
  FutureOr<HomebrewInfoResults> build() async {
    return fetchInfo();
  }
}
