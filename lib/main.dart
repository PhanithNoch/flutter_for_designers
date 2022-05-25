import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Image.network(
              'https://cdn.pixabay.com/photo/2020/03/17/12/02/vietnam-4940068_1280.jpg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: 150,
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            Divider(
              height: 10,
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            const ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(
              height: 10,
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const Spacer(),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Flutter'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 0, top: 0),
        child: Center(
          child: PhysicalModel(
            elevation: 10,
            shadowColor: Colors.grey,
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      // BoxShadow(
                      //   color: Colors.grey,
                      //   offset: Offset(0, 2),
                      //   blurRadius: 10,
                      //   spreadRadius: 3,
                      // ),
                    ]),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// text
                    Container(
                        padding: EdgeInsets.only(left: 10),
                        // color: Colors.black,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'The mobile apps that use Material Design',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'primary options for navigation. These navigations are Tabs and Drawers',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 11),
                            )
                          ],
                        )),

                    /// image
                    Expanded(
                      child: Image.network(
                        'https://pa.media/wp-content/uploads/2021/05/social-media-digital.png',
                        fit: BoxFit.cover,
                        // width: MediaQuery.of(context).size.width * 0.4,
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}

/// create a stateless or stateful
