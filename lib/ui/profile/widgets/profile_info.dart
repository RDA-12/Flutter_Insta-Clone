import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../widgets/horizontal_space.dart';
import '../../widgets/photo_profile.dart';
import '../../widgets/vertical_space.dart';
import 'info_col.dart';
import 'profile_button.dart';

class ProfileInfo extends StatelessWidget {
  /// Creates a Row consist of Profile Photo and
  /// account information ([postsAmount], [followersAmount], [followingAmount])
  /// from user with [username]
  const ProfileInfo({
    super.key,
    required this.postsAmount,
    required this.followersAmount,
    required this.followingAmount,
    required this.username,
  });

  final String username;
  final String postsAmount;
  final String followersAmount;
  final String followingAmount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const PhotoProfile(
                    photo: AssetConstants.dummyPict,
                    addBorder: false,
                    radius: 38,
                  ),
                  Text(
                    username,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InfoCol(data: postsAmount, title: "Posts"),
                  InfoCol(data: followersAmount, title: "Followers"),
                  InfoCol(data: followingAmount, title: "Posts"),
                ],
              ),
            ),
          ],
        ),
        const VerticalSpace(space: 24),
        Row(
          children: [
            Expanded(
              child: ProfileButton(
                child: const Text(
                  "Edit profile",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            const HorizontalSpace(space: 8),
            Expanded(
              child: ProfileButton(
                child: const Text(
                  "Share profile",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            const HorizontalSpace(space: 8),
            ProfileButton(
              child: const Icon(
                Icons.person_add_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
