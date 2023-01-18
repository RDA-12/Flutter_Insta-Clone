import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants.dart';
import '../../../domain/models/post_model.dart';
import '../../widgets/horizontal_space.dart';
import '../widgets/post.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset(AssetConstants.logoSvg, height: 28),
            const Icon(Icons.keyboard_arrow_down_outlined),
          ],
        ),
        actions: [
          SvgPicture.asset(AssetConstants.addIc),
          const HorizontalSpace(space: 14),
          SvgPicture.asset(AssetConstants.likeIc),
          const HorizontalSpace(space: 14),
          const Icon(Icons.message_outlined),
          const HorizontalSpace(space: 14),
        ],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Post(
            post: PostModel(
              caption:
                  "Laborum sit dolor qui et aliqua amet consequat ex ut esse duis. Officia adipisicing nisi sint reprehenderit magna aliqua culpa veniam amet in. Eiusmod veniam velit duis ut laboris laborum duis amet veniam anim mollit. Amet non ut pariatur dolore irure. Enim commodo ullamco nisi irure duis nulla mollit mollit officia occaecat pariatur.",
              username: "username",
              commentsAmount: 500,
              date: "13 hours ago",
              likesAmmount: "4,521,234",
              photos: [
                AssetConstants.dummyPict,
                AssetConstants.dummyPict,
                AssetConstants.dummyPict,
                AssetConstants.dummyPict,
                AssetConstants.dummyPict,
              ],
            ),
          );
        },
      ),
    );
  }
}
