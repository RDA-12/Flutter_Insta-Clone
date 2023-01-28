import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../widgets/photo_profile.dart';
import '../../widgets/vertical_space.dart';

class StoriesProfile extends StatelessWidget {
  /// Create a photo profile with border from [username] if [addBorder] true
  ///
  /// if [isYours] true and [addBorder] false, add + sign to profile pict
  const StoriesProfile({
    super.key,
    this.addBorder = false,
    required this.username,
    this.isYours = false,
  });

  final bool addBorder;
  final String username;
  final bool isYours;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        isYours && !addBorder
            ? Stack(
                children: [
                  PhotoProfile(
                    photo: AssetConstants.dummyPict,
                    radius: 28,
                    addBorder: addBorder,
                  ),
                  Positioned(
                    bottom: 1,
                    right: 1,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.add_circle_rounded,
                        size: 18,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              )
            : PhotoProfile(
                photo: AssetConstants.dummyPict,
                radius: 28,
                addBorder: addBorder,
              ),
        const VerticalSpace(space: 5),
        Text(
          username,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
