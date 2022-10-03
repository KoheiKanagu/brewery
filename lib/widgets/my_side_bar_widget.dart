import 'package:brewery/controllers/selected_page_state.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MySideBarWidget extends HookConsumerWidget {
  const MySideBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(FontAwesomeIcons.beerMugEmpty),
            title: const Text('Packages'),
            selected: ref.watch(selectedPageState) == SelectedPageType.packages,
            onTap: () {
              ref.read(selectedPageState.notifier).state =
                  SelectedPageType.packages;
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.wheatAwn),
            title: const Text('Settings'),
            selected: ref.watch(selectedPageState) == SelectedPageType.settings,
            onTap: () {
              ref.read(selectedPageState.notifier).state =
                  SelectedPageType.settings;
            },
          ),
        ],
      ),
    );
  }
}
