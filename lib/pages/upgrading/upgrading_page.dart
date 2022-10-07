import 'package:brewery/controllers/selected_page_state.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpgradingPage extends HookConsumerWidget {
  const UpgradingPage({
    super.key,
  });

  static const path = '/upgrading';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              ref.read(selectedPageState.notifier).state =
                  SelectedPageType.packages;
            },
            icon: const Icon(
              FontAwesomeIcons.xmark,
            ),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
