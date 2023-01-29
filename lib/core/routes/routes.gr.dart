// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;

import '../../domain/models/post_model.dart' as _i21;
import '../../ui/auth/pages/birthday_page.dart' as _i7;
import '../../ui/auth/pages/change_username_page.dart' as _i9;
import '../../ui/auth/pages/email_conf_page.dart' as _i5;
import '../../ui/auth/pages/login_page.dart' as _i2;
import '../../ui/auth/pages/name_password_page.dart' as _i6;
import '../../ui/auth/pages/phone_conf_page.dart' as _i4;
import '../../ui/auth/pages/register_page.dart' as _i3;
import '../../ui/auth/pages/username_page.dart' as _i8;
import '../../ui/explore/pages/explore_detail_page.dart' as _i17;
import '../../ui/explore/pages/explore_page.dart' as _i16;
import '../../ui/home/pages/home_page.dart' as _i11;
import '../../ui/on_board/pages/on_boarding_page.dart' as _i1;
import '../../ui/profile/pages/profile_page.dart' as _i18;
import '../../ui/reels/pages/reels_page.dart' as _i13;
import '../../ui/shop/pages/shop_page.dart' as _i14;
import '../../ui/wrapper/bottom_nav.dart' as _i10;
import '../../ui/wrapper/explore_wrapper.dart' as _i12;
import '../../ui/wrapper/profile_wrapper.dart' as _i15;

class AppRouter extends _i19.RootStackRouter {
  AppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    OnBoardingRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.OnBoardingPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.RegisterPage(),
      );
    },
    PhoneConfRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneConfRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.PhoneConfPage(
          key: args.key,
          phoneNumber: args.phoneNumber,
        ),
      );
    },
    EmailConfRoute.name: (routeData) {
      final args = routeData.argsAs<EmailConfRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.EmailConfPage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    NamePasswordRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.NamePasswordPage(),
      );
    },
    BirthdayRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.BirthdayPage(),
      );
    },
    UsernameRoute.name: (routeData) {
      final args = routeData.argsAs<UsernameRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.UsernamePage(
          key: args.key,
          username: args.username,
        ),
      );
    },
    ChangeUsernameRoute.name: (routeData) {
      final args = routeData.argsAs<ChangeUsernameRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.ChangeUsernamePage(
          key: args.key,
          username: args.username,
        ),
      );
    },
    BottomNav.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.BottomNav(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.HomePage(),
      );
    },
    ExploreWrapper.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.ExploreWrapper(),
      );
    },
    ReelsRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.ReelsPage(),
      );
    },
    ShopRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.ShopPage(),
      );
    },
    ProfileWrapper.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.ProfileWrapper(),
      );
    },
    ExploreRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.ExplorePage(),
      );
    },
    ExploreDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ExploreDetailRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i17.ExploreDetailPage(
          key: args.key,
          posts: args.posts,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.ProfilePage(),
      );
    },
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(
          OnBoardingRoute.name,
          path: '/on-boarding-page',
        ),
        _i19.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i19.RouteConfig(
          RegisterRoute.name,
          path: '/register-page',
        ),
        _i19.RouteConfig(
          PhoneConfRoute.name,
          path: '/phone-conf-page',
        ),
        _i19.RouteConfig(
          EmailConfRoute.name,
          path: '/email-conf-page',
        ),
        _i19.RouteConfig(
          NamePasswordRoute.name,
          path: '/name-password-page',
        ),
        _i19.RouteConfig(
          BirthdayRoute.name,
          path: '/birthday-page',
        ),
        _i19.RouteConfig(
          UsernameRoute.name,
          path: '/username-page',
        ),
        _i19.RouteConfig(
          ChangeUsernameRoute.name,
          path: '/change-username-page',
        ),
        _i19.RouteConfig(
          BottomNav.name,
          path: '/',
          children: [
            _i19.RouteConfig(
              HomeRoute.name,
              path: '',
              parent: BottomNav.name,
            ),
            _i19.RouteConfig(
              ExploreWrapper.name,
              path: 'explore-wrapper',
              parent: BottomNav.name,
              children: [
                _i19.RouteConfig(
                  ExploreRoute.name,
                  path: '',
                  parent: ExploreWrapper.name,
                ),
                _i19.RouteConfig(
                  ExploreDetailRoute.name,
                  path: 'explore-detail-page',
                  parent: ExploreWrapper.name,
                ),
              ],
            ),
            _i19.RouteConfig(
              ReelsRoute.name,
              path: 'reels-page',
              parent: BottomNav.name,
            ),
            _i19.RouteConfig(
              ShopRoute.name,
              path: 'shop-page',
              parent: BottomNav.name,
            ),
            _i19.RouteConfig(
              ProfileWrapper.name,
              path: 'profile-wrapper',
              parent: BottomNav.name,
              children: [
                _i19.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileWrapper.name,
                ),
                _i19.RouteConfig(
                  ExploreDetailRoute.name,
                  path: 'explore-detail-page',
                  parent: ProfileWrapper.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.OnBoardingPage]
class OnBoardingRoute extends _i19.PageRouteInfo<void> {
  const OnBoardingRoute()
      : super(
          OnBoardingRoute.name,
          path: '/on-boarding-page',
        );

  static const String name = 'OnBoardingRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i19.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i19.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/register-page',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i4.PhoneConfPage]
class PhoneConfRoute extends _i19.PageRouteInfo<PhoneConfRouteArgs> {
  PhoneConfRoute({
    _i20.Key? key,
    required String phoneNumber,
  }) : super(
          PhoneConfRoute.name,
          path: '/phone-conf-page',
          args: PhoneConfRouteArgs(
            key: key,
            phoneNumber: phoneNumber,
          ),
        );

  static const String name = 'PhoneConfRoute';
}

class PhoneConfRouteArgs {
  const PhoneConfRouteArgs({
    this.key,
    required this.phoneNumber,
  });

  final _i20.Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'PhoneConfRouteArgs{key: $key, phoneNumber: $phoneNumber}';
  }
}

/// generated route for
/// [_i5.EmailConfPage]
class EmailConfRoute extends _i19.PageRouteInfo<EmailConfRouteArgs> {
  EmailConfRoute({
    _i20.Key? key,
    required String email,
  }) : super(
          EmailConfRoute.name,
          path: '/email-conf-page',
          args: EmailConfRouteArgs(
            key: key,
            email: email,
          ),
        );

  static const String name = 'EmailConfRoute';
}

class EmailConfRouteArgs {
  const EmailConfRouteArgs({
    this.key,
    required this.email,
  });

  final _i20.Key? key;

  final String email;

  @override
  String toString() {
    return 'EmailConfRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i6.NamePasswordPage]
class NamePasswordRoute extends _i19.PageRouteInfo<void> {
  const NamePasswordRoute()
      : super(
          NamePasswordRoute.name,
          path: '/name-password-page',
        );

  static const String name = 'NamePasswordRoute';
}

/// generated route for
/// [_i7.BirthdayPage]
class BirthdayRoute extends _i19.PageRouteInfo<void> {
  const BirthdayRoute()
      : super(
          BirthdayRoute.name,
          path: '/birthday-page',
        );

  static const String name = 'BirthdayRoute';
}

/// generated route for
/// [_i8.UsernamePage]
class UsernameRoute extends _i19.PageRouteInfo<UsernameRouteArgs> {
  UsernameRoute({
    _i20.Key? key,
    required String username,
  }) : super(
          UsernameRoute.name,
          path: '/username-page',
          args: UsernameRouteArgs(
            key: key,
            username: username,
          ),
        );

  static const String name = 'UsernameRoute';
}

class UsernameRouteArgs {
  const UsernameRouteArgs({
    this.key,
    required this.username,
  });

  final _i20.Key? key;

  final String username;

  @override
  String toString() {
    return 'UsernameRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [_i9.ChangeUsernamePage]
class ChangeUsernameRoute extends _i19.PageRouteInfo<ChangeUsernameRouteArgs> {
  ChangeUsernameRoute({
    _i20.Key? key,
    required String username,
  }) : super(
          ChangeUsernameRoute.name,
          path: '/change-username-page',
          args: ChangeUsernameRouteArgs(
            key: key,
            username: username,
          ),
        );

  static const String name = 'ChangeUsernameRoute';
}

class ChangeUsernameRouteArgs {
  const ChangeUsernameRouteArgs({
    this.key,
    required this.username,
  });

  final _i20.Key? key;

  final String username;

  @override
  String toString() {
    return 'ChangeUsernameRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [_i10.BottomNav]
class BottomNav extends _i19.PageRouteInfo<void> {
  const BottomNav({List<_i19.PageRouteInfo>? children})
      : super(
          BottomNav.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'BottomNav';
}

/// generated route for
/// [_i11.HomePage]
class HomeRoute extends _i19.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i12.ExploreWrapper]
class ExploreWrapper extends _i19.PageRouteInfo<void> {
  const ExploreWrapper({List<_i19.PageRouteInfo>? children})
      : super(
          ExploreWrapper.name,
          path: 'explore-wrapper',
          initialChildren: children,
        );

  static const String name = 'ExploreWrapper';
}

/// generated route for
/// [_i13.ReelsPage]
class ReelsRoute extends _i19.PageRouteInfo<void> {
  const ReelsRoute()
      : super(
          ReelsRoute.name,
          path: 'reels-page',
        );

  static const String name = 'ReelsRoute';
}

/// generated route for
/// [_i14.ShopPage]
class ShopRoute extends _i19.PageRouteInfo<void> {
  const ShopRoute()
      : super(
          ShopRoute.name,
          path: 'shop-page',
        );

  static const String name = 'ShopRoute';
}

/// generated route for
/// [_i15.ProfileWrapper]
class ProfileWrapper extends _i19.PageRouteInfo<void> {
  const ProfileWrapper({List<_i19.PageRouteInfo>? children})
      : super(
          ProfileWrapper.name,
          path: 'profile-wrapper',
          initialChildren: children,
        );

  static const String name = 'ProfileWrapper';
}

/// generated route for
/// [_i16.ExplorePage]
class ExploreRoute extends _i19.PageRouteInfo<void> {
  const ExploreRoute()
      : super(
          ExploreRoute.name,
          path: '',
        );

  static const String name = 'ExploreRoute';
}

/// generated route for
/// [_i17.ExploreDetailPage]
class ExploreDetailRoute extends _i19.PageRouteInfo<ExploreDetailRouteArgs> {
  ExploreDetailRoute({
    _i20.Key? key,
    required List<_i21.PostModel> posts,
  }) : super(
          ExploreDetailRoute.name,
          path: 'explore-detail-page',
          args: ExploreDetailRouteArgs(
            key: key,
            posts: posts,
          ),
        );

  static const String name = 'ExploreDetailRoute';
}

class ExploreDetailRouteArgs {
  const ExploreDetailRouteArgs({
    this.key,
    required this.posts,
  });

  final _i20.Key? key;

  final List<_i21.PostModel> posts;

  @override
  String toString() {
    return 'ExploreDetailRouteArgs{key: $key, posts: $posts}';
  }
}

/// generated route for
/// [_i18.ProfilePage]
class ProfileRoute extends _i19.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}
