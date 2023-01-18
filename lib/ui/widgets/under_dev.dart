import 'package:flutter/material.dart';

import '../../core/constants.dart';

class UnderDev extends StatelessWidget {
  const UnderDev({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetConstants.underDevPict,
            height: MediaQuery.of(context).size.height / 3,
          ),
          Text(
            "Still Empty",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
