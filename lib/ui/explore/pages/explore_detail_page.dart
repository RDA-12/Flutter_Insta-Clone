import 'package:flutter/material.dart';

import '../../../domain/models/post_model.dart';
import '../../widgets/post.dart';

class ExploreDetailPage extends StatelessWidget {
  const ExploreDetailPage({super.key, required this.posts});

  final List<PostModel> posts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore"),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Post(post: posts[index]);
        },
      ),
    );
  }
}
