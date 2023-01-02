import 'package:flutter/material.dart';

class VerticalSpace extends StatelessWidget {
  /// Creates vertical space by [space]
  const VerticalSpace({super.key, required this.space});

  final double space;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: space,
    );
  }
}
