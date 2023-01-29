import 'package:auto_route/auto_route.dart';

import '../../ui/auth/pages/birthday_page.dart';
import '../../ui/auth/pages/change_username_page.dart';
import '../../ui/auth/pages/email_conf_page.dart';
import '../../ui/auth/pages/login_page.dart';
import '../../ui/auth/pages/name_password_page.dart';
import '../../ui/auth/pages/phone_conf_page.dart';
import '../../ui/auth/pages/register_page.dart';
import '../../ui/auth/pages/username_page.dart';
import '../../ui/explore/pages/explore_detail_page.dart';
import '../../ui/explore/pages/explore_page.dart';
import '../../ui/home/pages/home_page.dart';
import '../../ui/on_board/pages/on_boarding_page.dart';
import '../../ui/profile/pages/profile_page.dart';
import '../../ui/reels/pages/reels_page.dart';
import '../../ui/shop/pages/shop_page.dart';
import '../../ui/wrapper/bottom_nav.dart';
import '../../ui/wrapper/explore_wrapper.dart';
import '../../ui/wrapper/profile_wrapper.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: [
    AutoRoute(page: OnBoardingPage),
    AutoRoute(page: LoginPage),
    AutoRoute(page: RegisterPage),
    AutoRoute(page: PhoneConfPage),
    AutoRoute(page: EmailConfPage),
    AutoRoute(page: NamePasswordPage),
    AutoRoute(page: BirthdayPage),
    AutoRoute(page: UsernamePage),
    AutoRoute(page: ChangeUsernamePage),
    AutoRoute(
      page: BottomNav,
      initial: true,
      children: [
        AutoRoute(page: HomePage, initial: true),
        AutoRoute(
          page: ExploreWrapper,
          children: [
            AutoRoute(page: ExplorePage, initial: true),
            AutoRoute(page: ExploreDetailPage),
          ],
        ),
        AutoRoute(page: ReelsPage),
        AutoRoute(page: ShopPage),
        AutoRoute(
          page: ProfileWrapper,
          children: [
            AutoRoute(page: ProfilePage, initial: true),
            AutoRoute(page: ExploreDetailPage),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
