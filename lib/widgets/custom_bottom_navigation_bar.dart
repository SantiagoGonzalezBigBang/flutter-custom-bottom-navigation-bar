import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  const CustomBottomNavigationBar({
    Key? key,
    required this.tabsRouter
  }) : super(key: key);

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: tabsRouter.activeIndex,        
      onTap: tabsRouter.setActiveIndex,
      // margin: const EdgeInsets.symmetric(
      //   horizontal: 20.0,
      //   vertical: 40.0
      // ),
      items: [
        SalomonBottomBarItem(
          selectedColor: Colors.amberAccent,
          icon: const Icon(
            Icons.home,
            size: 30,
          ),
          title: const Text('Home'),
        ),
        SalomonBottomBarItem(
          selectedColor: Colors.blue[200],
          icon: const Icon(
            Icons.search,
            size: 30,
          ),
          title: const Text('Search'),
        ),
        SalomonBottomBarItem(
          selectedColor: Colors.pinkAccent[100],
          icon: const Icon(
            Icons.video_collection,
            size: 30,
          ),
          title: const Text('Reels'),
        ),
        SalomonBottomBarItem(
          selectedColor: Colors.cyanAccent[100],
          icon: const Icon(
            Icons.shop,
            size: 30,
          ),
          title: const Text('Shop'),
        ),
        SalomonBottomBarItem(
          selectedColor: Colors.amber[100],
          icon: const Icon(
            Icons.person,
            size: 30,
          ),
          title: const Text('Profile'),
        ),
      ]
    );
  }

  Widget instagram(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: tabsRouter.activeIndex,
      onTap: tabsRouter.setActiveIndex,
      backgroundColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      iconSize: 30.0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(tabsRouter.activeIndex == 0 ? Icons.home : Icons.home_outlined), 
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(
            tabsRouter.activeIndex == 1 ? Icons.search : Icons.search_outlined, 
            shadows: tabsRouter.activeIndex == 1 ? [
              const Shadow(
                color: Colors.white,
                blurRadius: 5.0
              )
            ] : null,  
          ),
          label: 'Search'
        ),
        BottomNavigationBarItem(
          icon: Icon(tabsRouter.activeIndex == 2 ? Icons.video_collection : Icons.video_collection_outlined), 
          label: 'Reels'
        ),
        BottomNavigationBarItem(
          icon: Icon(tabsRouter.activeIndex == 3 ? Icons.shop : Icons.shop_outlined), 
          label: 'Shop'
        ),
        BottomNavigationBarItem(
          icon: Icon(tabsRouter.activeIndex == 4 ? Icons.person : Icons.person_outline ), 
          label: 'Profile'
        ),
      ],
    );
  }


}