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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../ui/auth/pages/email_conf_page.dart' as _i5;
import '../../ui/auth/pages/login_page.dart' as _i2;
import '../../ui/auth/pages/name_password_page.dart' as _i6;
import '../../ui/auth/pages/phone_conf_page.dart' as _i4;
import '../../ui/auth/pages/register_page.dart' as _i3;
import '../../ui/on_board/pages/on_boarding_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    OnBoardingRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.OnBoardingPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.RegisterPage(),
      );
    },
    PhoneConfRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneConfRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.PhoneConfPage(
          key: args.key,
          phoneNumber: args.phoneNumber,
        ),
      );
    },
    EmailConfRoute.name: (routeData) {
      final args = routeData.argsAs<EmailConfRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.EmailConfPage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    NamePasswordRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.NamePasswordPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          OnBoardingRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i7.RouteConfig(
          RegisterRoute.name,
          path: '/register-page',
        ),
        _i7.RouteConfig(
          PhoneConfRoute.name,
          path: '/phone-conf-page',
        ),
        _i7.RouteConfig(
          EmailConfRoute.name,
          path: '/email-conf-page',
        ),
        _i7.RouteConfig(
          NamePasswordRoute.name,
          path: '/name-password-page',
        ),
      ];
}

/// generated route for
/// [_i1.OnBoardingPage]
class OnBoardingRoute extends _i7.PageRouteInfo<void> {
  const OnBoardingRoute()
      : super(
          OnBoardingRoute.name,
          path: '/',
        );

  static const String name = 'OnBoardingRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.RegisterPage]
class RegisterRoute extends _i7.PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: '/register-page',
        );

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i4.PhoneConfPage]
class PhoneConfRoute extends _i7.PageRouteInfo<PhoneConfRouteArgs> {
  PhoneConfRoute({
    _i8.Key? key,
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

  final _i8.Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'PhoneConfRouteArgs{key: $key, phoneNumber: $phoneNumber}';
  }
}

/// generated route for
/// [_i5.EmailConfPage]
class EmailConfRoute extends _i7.PageRouteInfo<EmailConfRouteArgs> {
  EmailConfRoute({
    _i8.Key? key,
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

  final _i8.Key? key;

  final String email;

  @override
  String toString() {
    return 'EmailConfRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i6.NamePasswordPage]
class NamePasswordRoute extends _i7.PageRouteInfo<void> {
  const NamePasswordRoute()
      : super(
          NamePasswordRoute.name,
          path: '/name-password-page',
        );

  static const String name = 'NamePasswordRoute';
}
