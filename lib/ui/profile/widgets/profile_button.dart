import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  /// Creates a elevated button it's content is [child] and [onPressed] callback
  const ProfileButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.grey.shade300,
          disabledBackgroundColor:
              Theme.of(context).colorScheme.primary.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
