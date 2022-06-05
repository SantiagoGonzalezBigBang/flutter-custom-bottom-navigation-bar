// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;
import 'package:flutter/widgets.dart' as _i4;

import '../screens/screens.dart' as _i1;

class Routes extends _i2.RootStackRouter {
  Routes([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    MainScreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainScreen());
    },
    HomeRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    SearchRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ReelsRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ReelsScreen());
    },
    ShopRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ShopScreen());
    },
    ProfileRouter.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProfileRouterArgs>(
          orElse: () =>
              ProfileRouterArgs(userId: pathParams.optString('userId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.ProfileScreen(key: args.key, userId: args.userId));
    },
    HomeScreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    ActivityScreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ActivityScreen());
    },
    SearchScreen.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SearchScreen());
    },
    ProfileScreen.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProfileScreenArgs>(
          orElse: () =>
              ProfileScreenArgs(userId: pathParams.optString('userId')));
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.ProfileScreen(key: args.key, userId: args.userId));
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(MainScreen.name, path: '/', children: [
          _i2.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: MainScreen.name,
              children: [
                _i2.RouteConfig(HomeScreen.name,
                    path: '', parent: HomeRouter.name),
                _i2.RouteConfig(ActivityScreen.name,
                    path: 'activity', parent: HomeRouter.name)
              ]),
          _i2.RouteConfig(SearchRouter.name,
              path: 'search',
              parent: MainScreen.name,
              children: [
                _i2.RouteConfig(SearchScreen.name,
                    path: '', parent: SearchRouter.name),
                _i2.RouteConfig(ProfileScreen.name,
                    path: ':userId', parent: SearchRouter.name)
              ]),
          _i2.RouteConfig(ReelsRouter.name,
              path: 'reels', parent: MainScreen.name),
          _i2.RouteConfig(ShopRouter.name,
              path: 'shop', parent: MainScreen.name),
          _i2.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: MainScreen.name)
        ])
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreen extends _i2.PageRouteInfo<void> {
  const MainScreen({List<_i2.PageRouteInfo>? children})
      : super(MainScreen.name, path: '/', initialChildren: children);

  static const String name = 'MainScreen';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i2.PageRouteInfo<void> {
  const HomeRouter({List<_i2.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class SearchRouter extends _i2.PageRouteInfo<void> {
  const SearchRouter({List<_i2.PageRouteInfo>? children})
      : super(SearchRouter.name, path: 'search', initialChildren: children);

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i1.ReelsScreen]
class ReelsRouter extends _i2.PageRouteInfo<void> {
  const ReelsRouter() : super(ReelsRouter.name, path: 'reels');

  static const String name = 'ReelsRouter';
}

/// generated route for
/// [_i1.ShopScreen]
class ShopRouter extends _i2.PageRouteInfo<void> {
  const ShopRouter() : super(ShopRouter.name, path: 'shop');

  static const String name = 'ShopRouter';
}

/// generated route for
/// [_i1.ProfileScreen]
class ProfileRouter extends _i2.PageRouteInfo<ProfileRouterArgs> {
  ProfileRouter({_i4.Key? key, String? userId})
      : super(ProfileRouter.name,
            path: 'profile',
            args: ProfileRouterArgs(key: key, userId: userId),
            rawPathParams: {'userId': userId});

  static const String name = 'ProfileRouter';
}

class ProfileRouterArgs {
  const ProfileRouterArgs({this.key, this.userId});

  final _i4.Key? key;

  final String? userId;

  @override
  String toString() {
    return 'ProfileRouterArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreen extends _i2.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: '');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i1.ActivityScreen]
class ActivityScreen extends _i2.PageRouteInfo<void> {
  const ActivityScreen() : super(ActivityScreen.name, path: 'activity');

  static const String name = 'ActivityScreen';
}

/// generated route for
/// [_i1.SearchScreen]
class SearchScreen extends _i2.PageRouteInfo<void> {
  const SearchScreen() : super(SearchScreen.name, path: '');

  static const String name = 'SearchScreen';
}

/// generated route for
/// [_i1.ProfileScreen]
class ProfileScreen extends _i2.PageRouteInfo<ProfileScreenArgs> {
  ProfileScreen({_i4.Key? key, String? userId})
      : super(ProfileScreen.name,
            path: ':userId',
            args: ProfileScreenArgs(key: key, userId: userId),
            rawPathParams: {'userId': userId});

  static const String name = 'ProfileScreen';
}

class ProfileScreenArgs {
  const ProfileScreenArgs({this.key, this.userId});

  final _i4.Key? key;

  final String? userId;

  @override
  String toString() {
    return 'ProfileScreenArgs{key: $key, userId: $userId}';
  }
}
