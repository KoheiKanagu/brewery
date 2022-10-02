import 'dart:convert';
import 'dart:io';

import 'package:brewery/models/homebrew/homebrew_info.dart';
import 'package:brewery/typedefs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final brewController =
    StateNotifierProvider<BrewController, AsyncValue<List<HomebrewInfo>>>(
  (ref) => BrewController(ref.read),
  name: 'brewController',
);

class BrewController extends StateNotifier<AsyncValue<List<HomebrewInfo>>> {
  BrewController(this._read) : super(const AsyncValue.loading()) {
    fetchInfo();
  }

  final Reader _read;

  Future<void> fetchInfo() async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(
      () async {
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
      },
    );
  }
}
