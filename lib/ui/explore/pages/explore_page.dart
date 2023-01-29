import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/constants.dart';
import '../../../domain/models/post_model.dart';
import '../../widgets/content.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Theme.of(context).colorScheme.surface,
            ),
            title: TextFormField(
              decoration: const InputDecoration(
                isDense: true,
                prefixIcon: Icon(
                  Icons.search_rounded,
                  textDirection: TextDirection.rtl,
                  size: 20,
                ),
                hintText: "Search",
                contentPadding: EdgeInsets.zero,
              ),
              maxLines: 1,
            ),
            floating: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                for (int i = 0; i < 10; i++)
                  Content(
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
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
