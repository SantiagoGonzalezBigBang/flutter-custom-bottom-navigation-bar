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
    return AutoTabsScaffold(
      routes: [
        const HomeRouter(),
        const SearchRouter(),
        const ReelsRouter(),
        const ShopRouter(),
        ProfileRouter()
      ],
      // appBarBuilder: (context, tabsRouter) => AppBar(
      //   title: const Text('Custom Bottom Navigation Bar'),
      //   centerTitle: true,
      //   leading: const AutoLeadingButton(),
      // ),
      bottomNavigationBuilder: (context, tabsRouter) {
        return CustomBottomNavigationBar(tabsRouter: tabsRouter).instagram(context);
      }
    );
  }
}