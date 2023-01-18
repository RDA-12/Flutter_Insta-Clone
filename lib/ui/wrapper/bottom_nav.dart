import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants.dart';
import '../../core/routes/routes.gr.dart';
import '../widgets/photo_profile.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        ExploreRoute(),
        ReelsRoute(),
        ShopRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            tabsRouter.setActiveIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: SvgPicture.asset(AssetConstants.outlinedHomeIc),
              activeIcon: SvgPicture.asset(
                AssetConstants.filledHomeIc,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: "Explore",
              icon: SvgPicture.asset(AssetConstants.outlinedSearchIc),
              activeIcon: SvgPicture.asset(AssetConstants.filledSearchIc),
            ),
            const BottomNavigationBarItem(
              label: "Reels",
              icon: Icon(
                Icons.video_collection_outlined,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.video_collection_rounded,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: "Shop",
              icon: SvgPicture.asset(AssetConstants.outlinedShopBageIc),
            ),
            const BottomNavigationBarItem(
              label: "Profile",
              icon: PhotoProfile(photo: AssetConstants.dummyPict),
            ),
          ],
        );
      },
    );
  }
}
