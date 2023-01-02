import 'package:auto_route/auto_route.dart';
import 'package:insta_clone/ui/auth/pages/register_page.dart';

import '../../ui/auth/pages/login_page.dart';
import '../../ui/on_board/pages/on_boarding_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: [
    AutoRoute(page: OnBoardingPage, initial: true),
    AutoRoute(page: LoginPage),
    AutoRoute(page: RegisterPage),
  ],
)
class $AppRouter {}
