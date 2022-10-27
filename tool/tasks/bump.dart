import 'package:grinder/grinder.dart';

@Task(
  'Bump version number',
)
void bump() {
  run(
    'git',
    arguments: [
      'fetch',
    ],
  );

  run(
    'git',
    arguments: [
      'checkout',
      'main',
    ],
  );

  run(
    'git',
    arguments: [
      'pull',
    ],
  );

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
