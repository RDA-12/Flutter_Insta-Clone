import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../domain/models/post_model.dart';
import '../home/widgets/expandable_text.dart';
import '../home/widgets/photo_stack.dart';
import '../home/widgets/post_action_row.dart';
import '../home/widgets/username_header.dart';
import 'vertical_space.dart';

class Post extends StatefulWidget {
  /// Create a post instagram like widget with [post] data in it
  const Post({super.key, required this.post});
  final PostModel post;

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  int idx = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          // Header
          const Divider(
            height: 1,
            thickness: 1,
          ),
          UsernameHeader(
            username: widget.post.username,
            photo: AssetConstants.dummyPict,
          ),
          // Picts
          PhotoStack(
            photos: widget.post.photos,
            onPhotosChanged: (val) {
              setState(() {
                idx = val + 1;
              });
            },
          ),
          // Bottom
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                // header
                PostActionRow(
                  idx: idx,
                  photosAmount: widget.post.photos.length,
                ),
                // likes
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Row(
                    children: [
                      Text(
                        "${widget.post.likesAmmount.toString()} likes",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
                // caption
                ExpandableText(
                  widget.post.caption,
                  username: widget.post.username,
                ),
                const VerticalSpace(space: 4),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // comments
                      Text(
                        "View all ${widget.post.commentsAmount} comments",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                      // info
                      Text(
                        widget.post.date,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
