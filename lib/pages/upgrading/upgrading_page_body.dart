import 'package:brewery/controllers/brew_upgrade_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpgradingPageBody extends HookConsumerWidget {
  const UpgradingPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SelectableText(
      ref.watch(brewUpgradeController).asData?.value ?? '',
    );
  }
}
