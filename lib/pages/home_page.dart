import 'package:brewery/controllers/selected_page_state.dart';
import 'package:brewery/pages/packages/packages_page.dart';
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
        body = Container();
        break;
    }
    return Material(
      child: Row(
        children: [
          const Expanded(
            child: MySideBarWidget(),
          ),
          Expanded(
            flex: 2,
            child: body,
          ),
        ],
      ),
    );
  }
}
