import 'package:flutter/material.dart';
import 'package:flutter_for_designer/screens/home_screen.dart';
import 'package:flutter_for_designer/screens/notificatino_screen.dart';
import 'package:flutter_for_designer/screens/profile_screen.dart';

class ExampleScreen extends StatefulWidget {
  ExampleScreen({Key? key}) : super(key: key);

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  int selectedIndex = 0;

  final List<Widget> lstScreen = [
    HomeScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example '),
      ),
      body: lstScreen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.black,
        currentIndex: selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.blueGrey,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });

          print('index $index');
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
