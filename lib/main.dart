import 'package:custom_bottom_navigation_bar/routes/routes.gr.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _routes = Routes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Custom Bottom Navigation',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0.0
        )
      ),
      routerDelegate: _routes.delegate(),
      routeInformationParser: _routes.defaultRouteParser(),      
    );
  }
}

// https://resocoder.com/2021/09/16/flutter-bottom-navigation-with-nested-routing/