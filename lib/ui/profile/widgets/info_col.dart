import 'package:flutter/material.dart';

class InfoCol extends StatelessWidget {
  /// Creates a column with [data] top of [title]
  const InfoCol({super.key, required this.data, required this.title});

  final String data;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          data,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w800,
              ),
        ),
        Text(title),
      ],
    );
  }
}
