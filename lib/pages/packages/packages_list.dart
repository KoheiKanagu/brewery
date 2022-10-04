import 'package:brewery/models/homebrew/homebrew_info_results.dart';
import 'package:brewery/pages/packages/packages_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PackagesList extends StatelessWidget {
  const PackagesList(
    this.homebrewInfoResults, {
    super.key,
  });

  final HomebrewInfoResults homebrewInfoResults;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: homebrewInfoResults.info.map(
          (e) => ProviderScope(
            overrides: [
              packagesListTileTarget.overrideWithValue(e),
            ],
            child: const PackagesListTile(),
          ),
        ),
      ).toList(),
      // children: homebrewInfoResults.info.map(PackageCard.new).toList(),
    );
  }
}
