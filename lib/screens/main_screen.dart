import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:custom_bottom_navigation_bar/routes/routes.gr.dart';
import 'package:custom_bottom_navigation_bar/widgets/widgets.dart';

class MainScreen extends StatelessWidget {
   
  const MainScreen({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        const HomeRouter(),
        const SearchRouter(),
        const ReelsRouter(),
        const ShopRouter(),
        ProfileRouter()
      ],
      builder: (context, child, animation) {        
        final tabsRouter = AutoTabsRouter.of(context);        

        return Scaffold(
          body: child,
          bottomNavigationBar: CustomBottomNavigationBar(tabsRouter: tabsRouter).instagram(context)
        );
      },
    );
  }
}