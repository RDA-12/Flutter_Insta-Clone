import 'package:flutter/material.dart';

class HorizontalSpace extends StatelessWidget {
  /// Creates horizontal space by [space]
  const HorizontalSpace({super.key, required this.space});

  final double space;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: space,
    );
  }
}
