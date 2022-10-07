import 'package:brewery/controllers/brew_controller.dart';
import 'package:brewery/controllers/fetch_interval_controller.dart';
import 'package:brewery/controllers/next_fetch_time_controller.dart';
import 'package:brewery/extensions/date_time_extension.dart';
import 'package:brewery/models/schedule_interval.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({
    super.key,
  });

  static const path = '/settings';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: const Text('Update check interval'),
            trailing:
                Text(ref.watch(fetchIntervalController).toFormattedString),
            subtitle: Text(
              // ignore: lines_longer_than_80_chars
              'Next Check: ${ref.watch(nextFetchTimeController).formattedString}',
            ),
          ),
          Slider.adaptive(
            max: ScheduleInterval.values.length.toDouble() - 1,
            value: ref.watch(fetchIntervalController).index.toDouble(),
            onChanged: (v) {
              final results = ScheduleInterval.values[v.toInt()];
              if (ref.read(fetchIntervalController) != results) {
                ref
                    .read(brewController.notifier)
                    .onChangedFetchInterval(results);
              }
            },
            divisions: ScheduleInterval.values.length,
          ),
          const Divider(),
          ListTile(
            title: const Text('Abount this app'),
            onTap: () {
              launchUrlString('https://github.com/KoheiKanagu/brewery');
            },
            trailing: const Icon(FontAwesomeIcons.github),
          ),
          ListTile(
            title: const Text('Licences'),
            onTap: () {
              showLicensePage(context: context);
            },
            trailing: const Icon(FontAwesomeIcons.idCard),
          ),
          const Divider(),
          const ListTile(
            title: Text('Quit'),
            onTap: SystemNavigator.pop,
            trailing: Icon(FontAwesomeIcons.rightFromBracket),
          )
        ],
      ),
    );
  }
}
