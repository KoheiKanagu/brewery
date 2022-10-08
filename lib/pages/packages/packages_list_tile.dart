import 'package:brewery/controllers/brew_upgrade_controller.dart';
import 'package:brewery/controllers/selected_page_state.dart';
import 'package:brewery/models/homebrew/homebrew_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';

final packagesListTileTarget = Provider.autoDispose<HomebrewInfo>(
  (_) => throw UnimplementedError(),
  name: 'packagesListTileTarget',
);

class PackagesListTile extends HookConsumerWidget {
  const PackagesListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homebrewInfo = ref.watch(packagesListTileTarget);

    return ListTile(
      title: Text(homebrewInfo.name),
      subtitle: Row(
        children: [
          Text(
            'v${homebrewInfo.installed.single.version}',
          ),
          const Gap(4),
          Icon(
            FontAwesomeIcons.squareArrowUpRight,
            color: Theme.of(context).colorScheme.primary,
          ),
          const Gap(4),
          Text('v${homebrewInfo.versions.stable}'),
        ],
      ),
      leading: IconButton(
        color: Theme.of(context).colorScheme.secondary,
        tooltip: 'open homepage',
        onPressed: () {
          launchUrlString(homebrewInfo.homepage);
        },
        icon: const Icon(FontAwesomeIcons.globe),
      ),
      trailing: IconButton(
        color: Theme.of(context).colorScheme.secondary,
        onPressed: () {
          ref.read(selectedPageState.notifier).state =
              SelectedPageType.upgrading;
          ref.read(brewUpgradeController.notifier).upgrade(homebrewInfo);
        },
        tooltip: 'brew upgrade ${homebrewInfo.name}',
        icon: const Icon(
          FontAwesomeIcons.download,
        ),
      ),
    );
  }
}
