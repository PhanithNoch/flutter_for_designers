import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'second_screen');
          },
          child: Hero(
            tag: 'image',
            child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_rNovysTvC8EJWJZ0S2KTq56ddHa4k4Lk0g&usqp=CAU'),
          ),
        ),
      ),
    );
  }
}
