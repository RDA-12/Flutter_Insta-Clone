import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  /// Creates custom secondary button (text button) displaying [text] and pressed action [onPressed]
  const SecondaryButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: double.infinity,
      child: GestureDetector(
        onTap: onPressed,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
