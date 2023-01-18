import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../widgets/horizontal_space.dart';
import '../../widgets/photo_profile.dart';

class UsernameHeader extends StatelessWidget {
  /// Creates a row contains [photo], [username], and more verts
  const UsernameHeader({
    super.key,
    required this.username,
    required this.photo,
  });
  final String username;
  final String photo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: DimenConstants.pagePadding,
      ),
      child: Row(
        children: [
          PhotoProfile(photo: photo),
          const HorizontalSpace(space: 12),
          Expanded(
            child: Text(
              username,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const Icon(Icons.more_vert_rounded),
        ],
      ),
    );
  }
}
