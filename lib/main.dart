import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OPEN LIBRARY',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OpenerPage(),
    );
  }
}

class OpenerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'OPEN LIBRARY',
              style: TextStyle(
                fontSize: 4,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OPEN LIBRARY'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'My Account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle drawer item tap here
                Navigator.pop(context); // Closes the drawer
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                // Handle drawer item tap here
                Navigator.pop(context); // Closes the drawer
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle drawer item tap here
                Navigator.pop(context); // Closes the drawer
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About us'),
              onTap: () {
                // Handle drawer item tap here
                Navigator.pop(context); // Closes the drawer
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Handle drawer item tap here
                Navigator.pop(context); // Closes the drawer
                setState(() {
                  _currentIndex = 4;
                });
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(child: _screens[_currentIndex]),
          BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_sharp),
                label: 'Reading Now',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                label: 'Library',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen 1'),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen 2'),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen 3'),
    );
  }
}
