import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
   
  const ActivityScreen({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Text('Activity'),
          ],
        ),
        leading: const AutoLeadingButton(),
      ),
      body: const Center(
        child: Text('ActivityScreen'),
      ),
    );
  }
}