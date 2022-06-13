import 'package:flutter/material.dart';
import 'package:flutter_for_designer/screens/button_screen.dart';
import 'package:flutter_for_designer/screens/first_screen.dart';
import 'package:flutter_for_designer/screens/gridview_screen.dart';
import 'package:flutter_for_designer/screens/home_screen.dart';
import 'package:flutter_for_designer/screens/notificatino_screen.dart';
import 'package:flutter_for_designer/screens/profile_screen.dart';
import 'package:flutter_for_designer/screens/second_scren.dart';
import 'package:flutter_for_designer/screens/stack_widget_screen.dart';

import 'example_screen.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => ExampleScreen(),
        'notification': (context) => NotificationScreen(),
        'profile': (context) => ProfileScreen(),
        'button_screen': (context) => ButtonScreen(),
        'gridview_screen': (context) => GridViewScreen(),
        'first_screen': (context) => FirstScreen(),
        'second_screen': (context) => SecondScreen(),
        'stack_screen': (context) => StackWidgetScreen(),
      },
      initialRoute: 'stack_screen',
      // home: HomeScreen(),
      // home: ExampleScreen(),
    );
  }
}

class HomeScreens extends StatelessWidget {
  HomeScreens({Key? key}) : super(key: key);
  final usernameController = TextEditingController(text: 'mario@gmail.com');
  final passwordController = TextEditingController(text: '123');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf8f7ff),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/courselist.png',
                    width: 200,
                  ),
                ],
              ),
            ),
            Column(
              children: const [
                Text(
                  'Welcome Back!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Log in to your existant account of Q allure',
                  style: TextStyle(fontSize: 9, color: Colors.grey),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  TextField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password',
                          style: TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.blue),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
