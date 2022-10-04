import 'package:brewery/controllers/brew_controller.dart';
import 'package:brewery/pages/packages/packages_all_up_to_date.dart';
import 'package:brewery/pages/packages/packages_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PackagesPage extends HookConsumerWidget {
  const PackagesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brew = ref.watch(brewController);

    return Scaffold(
      body: brew.when(
        data: (data) => data.info.isEmpty
            ? const PackagesAllUpToDate()
            : PackagesList(data),
        error: (error, stackTrace) => Center(
          child: Text('$error'),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      ),
      persistentFooterButtons: [
        Row(
          children: [
            Text(
              brew.isLoading
                  ? 'Checking...'
                  : 'Last check: ${brew.asData?.value.lastCheckDateTimeString}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Spacer(),
            brew.isLoading
                ? const ElevatedButton(
                    onPressed: null,
                    child: CircularProgressIndicator.adaptive(),
                  )
                : ElevatedButton(
                    onPressed: () {
                      ref.read(brewController.notifier).refresh();
                    },
                    child: const Icon(FontAwesomeIcons.rotateRight),
                  ),
          ],
        ),
      ],
    );
  }
}
