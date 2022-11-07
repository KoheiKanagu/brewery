import 'package:grinder/grinder.dart';

import 'create_pr.dart';

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

  final version = run(
    'cider',
    arguments: [
      'bump',
      'patch',
      '--build',
      buildNumber,
    ],
  ).trim();

  final branch = 'bump/$version';
  createPR(
    branch: branch,
    commitFilePath: 'pubspec.yaml',
    commitMessage: '[skip ci] bump to $version',
  );
}
