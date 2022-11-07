import 'package:animations/animations.dart';
import 'package:brewery/controllers/selected_page_state.dart';
import 'package:brewery/pages/packages/packages_page.dart';
import 'package:brewery/pages/settings/settings_page.dart';
import 'package:brewery/pages/upgrading/upgrading_page.dart';
import 'package:brewery/widgets/my_side_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({
    super.key,
  });

  static const path = '/home';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Widget body;

    switch (ref.watch(selectedPageState)) {
      case SelectedPageType.packages:
        body = const PackagesPage();
        break;
      case SelectedPageType.settings:
        body = const SettingsPage();
        break;
      case SelectedPageType.upgrading:
        body = const UpgradingPage();
        break;
    }

    Widget wrapTransition(
      SharedAxisTransitionType transitionType, {
      required Widget child,
    }) =>
        PageTransitionSwitcher(
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
              SharedAxisTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            transitionType: transitionType,
            child: child,
          ),
          child: child,
        );

    return Material(
      child: wrapTransition(
        SharedAxisTransitionType.scaled,
        child: ref.watch(selectedPageState) == SelectedPageType.upgrading
            ? body
            : Row(
                children: [
                  const Expanded(
                    child: MySideBarWidget(),
                  ),
                  Expanded(
                    flex: 2,
                    child: wrapTransition(
                      SharedAxisTransitionType.vertical,
                      child: body,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
