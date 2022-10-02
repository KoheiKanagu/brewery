import 'package:brewery/controllers/brew_controller.dart';
import 'package:brewery/models/homebrew/homebrew_info.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  test('fetchInfo', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final actual = container.read(brewController);
    expect(
      actual,
      const AsyncValue<List<HomebrewInfo>>.loading(),
    );

    await container.read(brewController.notifier).fetchInfo();
    expect(
      container.read(brewController),
      isA<AsyncData<List<HomebrewInfo>>>(),
    );
  });
}
