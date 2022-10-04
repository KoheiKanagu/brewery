import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:brewery/models/homebrew/homebrew_info.dart';
import 'package:brewery/models/homebrew/homebrew_info_results.dart';
import 'package:brewery/typedefs.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final brewController =
    AsyncNotifierProvider<BrewController, HomebrewInfoResults>(
  BrewController.new,
  name: 'brewController',
);

class BrewController extends AsyncNotifier<HomebrewInfoResults> {
  Future<void> refresh() async {
    state = const AsyncValue<HomebrewInfoResults>.loading().copyWithPrevious(
      state,
    );

    state = await AsyncValue.guard(
      () async => fetchInfo(),
    );
  }

  @visibleForTesting
  Future<HomebrewInfoResults> fetchInfo() async {
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
