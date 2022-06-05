import 'package:auto_route/auto_route.dart';

import 'package:custom_bottom_navigation_bar/screens/screens.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',  
  routes: [
    AutoRoute(
      path: '/',
      page: MainScreen,
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: HomeScreen
            ),
            AutoRoute(
              path: 'activity',
              page: ActivityScreen
            )
          ]
        ),
        AutoRoute(
          path: 'search',
          name: 'SearchRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: SearchScreen
            ),
            AutoRoute(
              path: ':userId',
              page: ProfileScreen
            )
          ]
        ),
        AutoRoute(
          path: 'reels',
          name: 'ReelsRouter',
          page: ReelsScreen,          
        ),
        AutoRoute(
          path: 'shop',
          name: 'ShopRouter',
          page: ShopScreen,          
        ),
        AutoRoute(
          path: 'profile',
          name: 'ProfileRouter',
          page: ProfileScreen,          
        ),
      ]
    )
  ],
)

class $Routes {}

// flutter pub run build_runner build --delete-conflicting-outputs
// flutter pub run build_runner watch --delete-conflicting-outputs