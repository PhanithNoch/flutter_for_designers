import 'package:flutter/material.dart';
import 'package:flutter_for_designer/screens/notificatino_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> lstPosts = [
    {
      'image':
          'https://cdn.pixabay.com/photo/2020/03/17/12/02/vietnam-4940068_1280.jpg',
      'title': 'Flutter Course 2022',
      'subTitle': 'Learn flutter from scrach',
      'hour': '9'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOi8bvymZ-4XxdXdhhgdXHlNLGHSUeFi1a8Q&usqp=CAU',
      'title': 'Laravel Course 2022',
      'subTitle': 'Learn Laravel from scrach',
      'hour': '2'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3458XvDlEq9hVnv_XHBStMRcPSlYsIkIjTppEf4yXqEbt44pqNxVpI9auhXbpGh_z824&usqp=CAU',
      'title': 'Angular Course 2022',
      'subTitle': 'Learn Angular from scrach',
      'hour': '1'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: lstPosts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://learnenglish.britishcouncil.org/sites/podcasts/files/2021-10/RS6715_492969113-hig.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Jonh Jack'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '8 hr',
                                      style: TextStyle(fontSize: 11),
                                    ),
                                    Icon(
                                      Icons.notifications,
                                      size: 10,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.menu),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.network(
                  lstPosts[index]['image'],
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
