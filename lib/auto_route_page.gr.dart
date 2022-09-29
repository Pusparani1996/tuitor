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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/cupertino.dart' as _i7;
import 'package:flutter/material.dart' as _i6;
import 'package:tuitor/pages/become_tuitor_page.dart' as _i4;
import 'package:tuitor/pages/find_tuitor_page.dart' as _i3;
import 'package:tuitor/pages/home_page.dart' as _i1;
import 'package:tuitor/pages/login_page.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    Login_PageRoute.name: (routeData) {
      final args = routeData.argsAs<Login_PageRouteArgs>(
          orElse: () => const Login_PageRouteArgs());
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.Login_Page(key: args.key),
      );
    },
    Find_TuitorPageRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.Find_TuitorPage(),
      );
    },
    Become_TuitorPageRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.Become_TuitorPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          HomePageRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          Login_PageRoute.name,
          path: '/login_-page',
        ),
        _i5.RouteConfig(
          Find_TuitorPageRoute.name,
          path: '/find_-tuitor-page',
        ),
        _i5.RouteConfig(
          Become_TuitorPageRoute.name,
          path: '/become_-tuitor-page',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i5.PageRouteInfo<void> {
  const HomePageRoute()
      : super(
          HomePageRoute.name,
          path: '/',
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.Login_Page]
class Login_PageRoute extends _i5.PageRouteInfo<Login_PageRouteArgs> {
  Login_PageRoute({_i7.Key? key})
      : super(
          Login_PageRoute.name,
          path: '/login_-page',
          args: Login_PageRouteArgs(key: key),
        );

  static const String name = 'Login_PageRoute';
}

class Login_PageRouteArgs {
  const Login_PageRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'Login_PageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.Find_TuitorPage]
class Find_TuitorPageRoute extends _i5.PageRouteInfo<void> {
  const Find_TuitorPageRoute()
      : super(
          Find_TuitorPageRoute.name,
          path: '/find_-tuitor-page',
        );

  static const String name = 'Find_TuitorPageRoute';
}

/// generated route for
/// [_i4.Become_TuitorPage]
class Become_TuitorPageRoute extends _i5.PageRouteInfo<void> {
  const Become_TuitorPageRoute()
      : super(
          Become_TuitorPageRoute.name,
          path: '/become_-tuitor-page',
        );

  static const String name = 'Become_TuitorPageRoute';
}
