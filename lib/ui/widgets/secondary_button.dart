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
      child: GestureDetector(
        onTap: onPressed,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary.withOpacity(
                    onPressed == null ? 0.5 : 1,
                  ),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
