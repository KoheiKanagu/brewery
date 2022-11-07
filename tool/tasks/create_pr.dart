import 'package:grinder/grinder.dart';

void createPR({
  required String branch,
  required String commitFilePath,
  required String commitMessage,
}) {
  run(
    'git',
    arguments: [
      'checkout',
      '-b',
      branch,
    ],
  );
  run(
    'git',
    arguments: [
      'add',
      commitFilePath,
    ],
  );

  run(
    'git',
    arguments: [
      'commit',
      '-m',
      commitMessage,
    ],
  );

  run(
    'git',
    arguments: [
      'push',
      '--set-upstream',
      'origin',
      branch,
    ],
  );

  run(
    'gh',
    arguments: [
      'pr',
      'create',
      '--fill',
      '--assignee',
      '@me',
    ],
  );
}
