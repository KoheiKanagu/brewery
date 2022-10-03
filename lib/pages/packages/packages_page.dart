import 'package:brewery/controllers/brew_controller.dart';
import 'package:brewery/pages/packages/package_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PackagesPage extends HookConsumerWidget {
  const PackagesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: ref.watch(brewController).isLoading
          ? const FloatingActionButton.small(
              onPressed: null,
              child: CircularProgressIndicator.adaptive(),
            )
          : FloatingActionButton.small(
              onPressed: () {
                ref.read(brewController.notifier).refresh();
              },
              child: const Icon(FontAwesomeIcons.rotateRight),
            ),
      body: ref.watch(brewController).when(
            data: (data) => ListView(
              children: data.map(PackageCard.new).toList(),
            ),
            error: (error, stackTrace) => Center(
              child: Text('$error'),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
    );
  }
}
