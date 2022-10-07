import 'package:brewery/controllers/selected_page_state.dart';
import 'package:brewery/models/homebrew/homebrew_info_results.dart';
import 'package:brewery/pages/packages/packages_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PackagesList extends HookConsumerWidget {
  const PackagesList(
    this.homebrewInfoResults, {
    super.key,
  });

  final HomebrewInfoResults homebrewInfoResults;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final info = homebrewInfoResults.info;

        if (index == info.length) {
          return ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Upgrade All'),
                const Gap(8),
                Icon(
                  FontAwesomeIcons.download,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ],
            ),
            tileColor: Theme.of(context).colorScheme.secondaryContainer,
            onTap: () {
              ref.read(selectedPageState.notifier).state =
                  SelectedPageType.upgrading;
            },
          );
        }

        return ProviderScope(
          overrides: [
            packagesListTileTarget.overrideWithValue(
              info[index],
            ),
          ],
          child: const PackagesListTile(),
        );
      },
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemCount: homebrewInfoResults.info.length + 1,
    );
  }
}
