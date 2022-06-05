import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

class ProfileScreen extends StatelessWidget {
   
  const ProfileScreen({
    Key? key, 
    @PathParam() this.userId
  }) : super(key: key);

  final String? userId;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          userId ?? 'My Profile'
        ),
      ),
      body: const Center(
        child: Text('ProfileScreen'),
      ),
    );
  }
}