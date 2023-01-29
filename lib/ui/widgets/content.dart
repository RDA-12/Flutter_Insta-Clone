import 'package:flutter/material.dart';

import '../../../domain/models/post_model.dart';
import 'post_thumbnail.dart';

class Content extends StatelessWidget {
  /// Creates 1 section of a content consist of 6 grid
  ///
  /// if [withVideo], content contains video occupying 2 grid, video on the right.
  /// if [isFlipped] and [withVideo], same as before, but video on the left.
  /// if [withVideo], [posts] must be 4, otherwise [posts] must be 6.
  /// [withVideo] and [isFlipped] default to false.
  Content({
    super.key,
    this.withVideo = false,
    this.isFlipped = false,
    required this.posts,
  }) {
    assert(!withVideo && posts.length == 6 || withVideo && posts.length == 4);
  }

  final bool withVideo;
  final bool isFlipped;
  final List<PostModel> posts;

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      padding: const EdgeInsets.only(bottom: 3),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 3,
      ),
      children: posts
          .map(
            (post) => PostThumbnail(post: post),
          )
          .toList(),
    );
  }
}
