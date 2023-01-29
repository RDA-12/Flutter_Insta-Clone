import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants.dart';
import '../../../domain/models/post_model.dart';
import '../../widgets/content.dart';
import '../../widgets/horizontal_space.dart';
import '../widgets/profile_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "username",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            SvgPicture.asset(AssetConstants.addIc),
            const HorizontalSpace(space: 14),
            const Icon(Icons.menu_rounded),
            const HorizontalSpace(space: 14),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              const SliverAppBar(
                pinned: true,
                floating: false,
                snap: false,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(0),
                  child: TabBar(
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.grid_on_rounded),
                      ),
                      Tab(
                        icon: Icon(Icons.person_pin_rounded),
                      ),
                    ],
                  ),
                ),
                expandedHeight: 225,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: DimenConstants.pagePadding,
                    ),
                    child: ProfileInfo(
                      postsAmount: "1",
                      followersAmount: "234",
                      followingAmount: "123",
                      username: "username",
                    ),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 5,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Content(
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
                  );
                },
              ),
              ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Content(
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
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
