import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 30,
                      height: 50,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFe5e5e5)),
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Icon(Icons.notifications),
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2C_xadF4WT19MkU5PpYyU8njyMgMIuttwXQ&usqp=CAU'),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Welcome Back',
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(
                      'Creative Mints',
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: const TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              filled: true,
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(
                                  Icons.currency_exchange,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Transactions',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                Text(
                                  '7 items',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white70),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Icon(
                                  Icons.currency_exchange,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Transactions',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                Text(
                                  '7 items',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white70),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.currency_exchange,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Transactions',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                Text(
                                  '7 items',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white70),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.currency_exchange,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Transactions',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                Text(
                                  '7 items',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white70),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Choose  a categories',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.home),
                              Text('Branch Services'),
                            ],
                          )),
                    ),
                    Expanded(
                      child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.home),
                              Text('Branch Services'),
                            ],
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
