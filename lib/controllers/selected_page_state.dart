import 'package:hooks_riverpod/hooks_riverpod.dart';

enum SelectedPageType {
  packages,
  settings,
  ;
}

final selectedPageState = StateProvider(
  (ref) => SelectedPageType.packages,
  name: 'selectedPageState',
);
