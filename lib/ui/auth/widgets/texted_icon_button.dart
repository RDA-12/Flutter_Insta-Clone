import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants.dart';

class TextedIconButton extends StatelessWidget {
  /// Create a clickable row contains icon from [iconPath] and [text] with [textColor]
  ///
  /// [iconPath] must be a svg asset
  const TextedIconButton({
    super.key,
    required this.text,
    required this.iconPath,
    required this.textColor,
    required this.onPressed,
  });

  final String text;
  final String iconPath;
  final Color textColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 24,
            width: 24,
            child: SvgPicture.asset(AssetConstants.facebookIc),
          ),
          const Text(
            "Log In with Facebook",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
