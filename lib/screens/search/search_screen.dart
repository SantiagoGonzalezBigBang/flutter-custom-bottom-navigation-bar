import 'package:auto_route/auto_route.dart';
import 'package:custom_bottom_navigation_bar/routes/routes.gr.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
   
  const SearchScreen({
    Key? key
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10.0)
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    icon: Icon(Icons.search),
                    isCollapsed: true
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                FocusScope.of(context).unfocus();
              },               
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0
                ),
              )
            )
          ],
        )
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20.0,),
          InkWell(
            onTap: () => AutoRouter.of(context).push(ProfileScreen(
              userId: 'camila123'
            )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.red,
                    backgroundImage: NetworkImage('https://pixlr.com/images/index/filter-effect.webp'),                
                  ),
                  const SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'camila123',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 3.0,),
                      Text(
                        'Camila Holly',
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                      SizedBox(height: 3.0,),
                      Text(
                        'Followed by Pepito',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )
    );
  }

}