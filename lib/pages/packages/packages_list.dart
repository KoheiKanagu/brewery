import 'package:brewery/models/homebrew/homebrew_info_results.dart';
import 'package:brewery/pages/packages/package_card.dart';
import 'package:flutter/material.dart';

class PackagesList extends StatelessWidget {
  const PackagesList(
    this.homebrewInfoResults, {
    super.key,
  });

  final HomebrewInfoResults homebrewInfoResults;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: homebrewInfoResults.info.map(PackageCard.new).toList(),
    );
  }
}
