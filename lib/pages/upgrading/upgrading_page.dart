import 'package:brewery/controllers/brew_controller.dart';
import 'package:brewery/controllers/brew_upgrade_controller.dart';
import 'package:brewery/controllers/selected_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpgradingPage extends HookConsumerWidget {
  const UpgradingPage({
    super.key,
  });

  static const path = '/upgrading';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useScrollController();
    if (controller.hasClients) {
      Future.microtask(
        () => controller.animateTo(
          controller.position.maxScrollExtent,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeOut,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: ref.watch(brewUpgradeController).isLoading
            ? const CircularProgressIndicator.adaptive()
            : IconButton(
                tooltip: 'Close',
                onPressed: () {
                  ref.read(selectedPageState.notifier).state =
                      SelectedPageType.packages;
                  ref.read(brewController.notifier).refresh();
                },
                icon: const Icon(
                  FontAwesomeIcons.angleLeft,
                ),
              ),
        actions: [
          IconButton(
            tooltip: 'Copy to clipboard',
            onPressed: () {
              Clipboard.setData(
                ClipboardData(
                  text: ref.read(brewUpgradeController).asData?.value ?? '',
                ),
              );
            },
            icon: const Icon(
              FontAwesomeIcons.copy,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        controller: controller,
        child: SelectableText(
          ref.watch(brewUpgradeController).asData?.value ?? '',
        ),
      ),
    );
  }
}
