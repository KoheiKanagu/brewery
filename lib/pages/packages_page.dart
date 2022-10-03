import 'package:brewery/controllers/brew_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PackagesPage extends HookConsumerWidget {
  const PackagesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: ref.watch(brewController).when(
            data: (data) => data
                .map(
                  (e) => ListTile(
                    title: Text(e.name),
                    subtitle: Text('latest: ${e.versions.stable}'),
                  ),
                )
                .toList(),
            error: (error, stackTrace) {
              return [
                const Text('error'),
              ];
            },
            loading: () => [
              const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            ],
          ),
    );
  }
}
