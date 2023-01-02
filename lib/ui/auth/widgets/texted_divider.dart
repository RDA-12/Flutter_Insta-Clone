import 'package:flutter/material.dart';

import '../../widgets/horizontal_space.dart';

class TextedDivider extends StatelessWidget {
  /// Create a divider with [text] in the middle of it, colored with [color] default to grey
  const TextedDivider({
    super.key,
    required this.text,
    this.color = Colors.grey,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            color: color,
            height: 0.5,
          ),
        ),
        const HorizontalSpace(space: 10),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
        const HorizontalSpace(space: 10),
        Expanded(
          child: Container(
            color: color,
            height: 0.5,
          ),
        ),
      ],
    );
  }
}
