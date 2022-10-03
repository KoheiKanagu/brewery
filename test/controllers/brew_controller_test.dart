import 'package:brewery/controllers/brew_controller.dart';
import 'package:brewery/models/homebrew/homebrew_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  test('fetchInfo', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    expect(
      container.read(brewController),
      const AsyncValue<List<HomebrewInfo>>.loading(),
    );

    expect(
      container.read(brewController.notifier).fetchInfo(),
      isA<List<HomebrewInfo>>(),
    );
  });
}
