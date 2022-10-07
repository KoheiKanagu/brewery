import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpgradePage extends HookConsumerWidget {
  const UpgradePage({
    super.key,
  });

  static const path = '/upgrade';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
