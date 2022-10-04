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
