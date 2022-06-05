import 'package:auto_route/auto_route.dart';
import 'package:custom_bottom_navigation_bar/routes/routes.gr.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        title: Row(
          children: const [
            Text('Instagram'),
          ],
        ),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () => AutoRouter.of(context).push(
              const ActivityScreen()
            ), 
            icon: const Icon(
              Icons.local_activity_outlined,
            )
          )
        ],
      ),
      body: ListView(
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGhvdG98ZW58MHx8MHx8&w=1000&q=80',
            fit: BoxFit.cover,
            height: 300.0,
          ),
          const SizedBox(height: 20.0),
          Image.network(
            'https://i.pinimg.com/550x/31/23/2f/31232fe4b51b47763282524f008d9081.jpg',
            fit: BoxFit.cover,
            height: 300.0,
          ),
          const SizedBox(height: 20.0),
          Image.network(
            'https://www.designer.io/wp-content/uploads/2019/10/1-1024x698.png',
            fit: BoxFit.cover,
            height: 300.0,
          ),
        ],
      )
    );
  }
}