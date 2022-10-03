import 'package:brewery/models/homebrew/homebrew_info.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class PackageCard extends StatelessWidget {
  const PackageCard(
    this.homebrewInfo, {
    super.key,
  });

  final HomebrewInfo homebrewInfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(homebrewInfo.name),
            subtitle: Row(
              children: [
                Text(
                  'v${homebrewInfo.installed.single.version}',
                ),
                const Gap(4),
                Icon(
                  FontAwesomeIcons.squareArrowUpRight,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const Gap(4),
                Text('v${homebrewInfo.versions.stable}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
