import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:brewery/controllers/fetch_interval_controller.dart';
import 'package:brewery/controllers/next_fetch_time_controller.dart';
import 'package:brewery/models/homebrew/homebrew_info.dart';
import 'package:brewery/models/homebrew/homebrew_info_results.dart';
import 'package:brewery/models/schedule_interval.dart';
import 'package:brewery/utils/my_logger.dart';
import 'package:brewery/utils/typedefs.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final brewController =
    AsyncNotifierProvider<BrewController, HomebrewInfoResults>(
      BrewController.new,
      name: 'brewController',
    );

String get brewPath {
  final uname = Process.runSync('uname', [' -m']).stdout as String;

  if (uname == 'arm64') {
    return '/opt/homebrew/bin/brew';
  } else {
    return '/usr/local/bin/brew';
  }
}

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

    state = await AsyncValue.guard(() async {
      final results = build();

      final duration = ref.read(fetchIntervalController).duration;
      ref.read(nextFetchTimeController.notifier).state = DateTime.now().add(
        duration,
      );

      return results;
    });
  }

  @visibleForTesting
  Future<HomebrewInfoResults> fetchInfo() async {
    final updateResults = await Process.run(brewPath, ['update']);
    logger.debug(updateResults.stdout);

    final results =
        (await Process.run(brewPath, ['info', '--json', '--installed'])).stdout
            as String;

    return HomebrewInfoResults.create(
      (json.decode(results) as List<dynamic>)
          .whereType<Json>()
          .map(HomebrewInfo.fromJson)
          .where((e) => e.outdated)
          .where((e) => e.installed.last.installedOnRequest)
          .toList(),
    );
  }

  @override
  FutureOr<HomebrewInfoResults> build() async {
    return fetchInfo();
  }
}
