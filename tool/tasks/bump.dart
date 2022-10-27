import 'package:grinder/grinder.dart';

@Task(
  'Bump version number',
)
void bump() {
  final buildNumber = run(
    'git',
    arguments: [
      'rev-list',
      'HEAD',
      '--count',
    ],
  ).trim();

  run(
    'cider',
    arguments: [
      'bump',
      'patch',
      '--build',
      buildNumber,
    ],
  ).trim();
}
