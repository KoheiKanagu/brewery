import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class PackagesAllUpToDate extends StatelessWidget {
  const PackagesAllUpToDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('All up to date'),
          const Gap(4),
          Icon(
            FontAwesomeIcons.cakeCandles,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
