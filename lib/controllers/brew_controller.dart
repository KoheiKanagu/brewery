import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:brewery/models/homebrew/homebrew_info.dart';
import 'package:brewery/typedefs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final brewController =
    AsyncNotifierProvider<BrewController, List<HomebrewInfo>>(
  BrewController.new,
  name: 'brewController',
);

class BrewController extends AsyncNotifier<List<HomebrewInfo>> {
  List<HomebrewInfo> fetchInfo() {
    final results = Process.runSync(
      'brew',
      [
        'info',
        '--json',
        '--installed',
      ],
    ).stdout as String;

    return (json.decode(results) as List<dynamic>)
        .whereType<Json>()
        .map(HomebrewInfo.fromJson)
        .where((e) => e.outdated)
        .where(
          (e) => e.installed.single.installedOnRequest,
        )
        .toList();
  }

  @override
  FutureOr<List<HomebrewInfo>> build() async {
    return fetchInfo();
  }
}
