import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:brewery/models/homebrew/homebrew_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final brewUpgradeController =
    AsyncNotifierProvider<BrewUpgradeController, String>(
  BrewUpgradeController.new,
  name: 'brewUpgradeController',
);

class BrewUpgradeController extends AsyncNotifier<String> {
  BrewUpgradeController() : super();

  final stringBuffer = StringBuffer();

  Future<void> upgrade(HomebrewInfo info) async {
    stringBuffer.clear();
    state = const AsyncValue<String>.loading()
        .copyWithPrevious(const AsyncValue.data(''));

    final process = await Process.start(
      'brew',
      [
        'info',
        info.name,
        '--verbose',
      ],
    );

    await process.stdout.transform(utf8.decoder).forEach(_write);
    await process.stderr.transform(utf8.decoder).forEach(_write);
    await process.exitCode;

    state = AsyncValue.data(stringBuffer.toString());
  }

  void _write(String value) {
    stringBuffer.writeln(value);
    state = state.copyWithPrevious(
      AsyncValue.data(
        stringBuffer.toString(),
      ),
    );
  }

  @override
  FutureOr<String> build() {
    return '';
  }
}
