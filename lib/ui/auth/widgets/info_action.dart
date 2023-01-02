import 'package:flutter/material.dart';

class InfoAction extends StatelessWidget {
  /// Create a row contains [textInfo] and clickable [actionText]
  const InfoAction({
    super.key,
    required this.textInfo,
    required this.actionText,
    required this.onActionTextPressed,
  });

  final String textInfo;
  final String actionText;
  final VoidCallback onActionTextPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textInfo,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        InkWell(
          onTap: onActionTextPressed,
          child: Text(
            actionText,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }
}
