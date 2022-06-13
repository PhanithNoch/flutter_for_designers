import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  GridViewScreen({Key? key}) : super(key: key);

  List<Map<String, dynamic>> lstMenu = [
    {'buttonName': 'Button Screen', 'route': 'button_screen'},
    {'buttonName': 'Profile', 'route': 'profile'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Screen'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                MediaQuery.of(context).orientation == Orientation.landscape
                    ? 4
                    : 2,
          ),
          itemCount: lstMenu.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, lstMenu[index]['route']);
              },
              child: Card(
                color: Colors.amber,
                child: Center(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(lstMenu[index]['buttonName']),
                  ],
                )),
              ),
            );
          }),
    );
  }
}
