import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              FlatButton(
                onPressed: () {},
                child: Row(
                  children: [Icon(Icons.save), Text('Save')],
                ),
              ),
              TextButton(onPressed: () {}, child: Text("TextButton")),
              MaterialButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [Icon(Icons.home), Text('Home')],
                  ),
                ),
              ),
              InkWell(
                child: Text('CLick me!'),
                onTap: () {
                  print('tappped');
                },
              ),
            ],
          ),
          GestureDetector(
            onLongPress: () {
              print('logn pressed.');
            },
            onDoubleTap: () {},
            onTap: () {
              print('ontapped');
            },
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
