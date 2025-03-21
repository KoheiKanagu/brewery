import 'package:brewery/controllers/brew_controller.dart';
import 'package:brewery/controllers/next_fetch_time_controller.dart';
import 'package:brewery/extensions/date_time_extension.dart';
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
            DefaultTextStyle(
              style: Theme.of(context).textTheme.bodySmall!,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: brew.isLoading,
                    child: const Text('Checking...'),
                  ),
                  Visibility(
                    visible: !brew.isLoading,
                    child: Text(
                      // ignore: lines_longer_than_80_chars
                      'Last Check: ${brew.asData?.value.lastCheckDateTime.formattedString}',
                      // style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  Visibility(
                    visible: !brew.isLoading,
                    child: Text(
                      // ignore: lines_longer_than_80_chars
                      'Next Check: ${ref.watch(nextFetchTimeController).formattedString}',
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            if (brew.isLoading) const ElevatedButton(
                    onPressed: null,
                    child: CircularProgressIndicator.adaptive(),
                  ) else ElevatedButton(
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
