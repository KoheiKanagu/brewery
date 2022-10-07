import 'package:hooks_riverpod/hooks_riverpod.dart';

enum SelectedPageType {
  packages,
  settings,
  upgrading,
  ;
}

final selectedPageState = StateProvider(
  (ref) => SelectedPageType.packages,
  name: 'selectedPageState',
);
