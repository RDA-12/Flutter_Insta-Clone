import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/constants.dart';
import '../../../core/routes/routes.gr.dart';
import '../../../domain/models/post_model.dart';

class PostThumbnail extends StatelessWidget {
  /// Creates a post thumnail for [post]
  const PostThumbnail({super.key, required this.post});

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(
          ExploreDetailRoute(
            posts: [
              for (int i = 0; i < 6; i++)
                PostModel(
                  username: "username",
                  caption:
                      "Aute deserunt commodo laboris fugiat velit nulla qui labore elit reprehenderit deserunt proident.",
                  commentsAmount: Random().nextInt(100000),
                  photos: [
                    for (int i = 0; i < Random().nextInt(4) + 1; i++)
                      AssetConstants.dummyPict
                  ],
                  date: "22-10-2023",
                  likesAmmount: Random().nextInt(1000).toString(),
                )
            ],
          ),
        );
      },
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              post.photos[0],
              fit: BoxFit.fitHeight,
            ),
          ),
          if (post.photos.length > 1)
            const Positioned(
              top: 1,
              right: 1,
              child: Icon(
                Icons.collections,
                color: Colors.white,
              ),
            ),
        ],
      ),
    );
  }
}
