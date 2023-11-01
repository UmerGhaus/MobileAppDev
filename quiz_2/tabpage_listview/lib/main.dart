import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('App with Tabs'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
            ],
          ),
        ),
        drawer: AppDrawer(),
        body: TabBarView(
          children: [
            ListViewPage(), // Add your content for Tab 1 here
            Center(
                child:
                    Text('Tab 2 Content')), // Add your content for Tab 2 here
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  // Navigate to Home Page
                },
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Navigate to Search Page
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Tab 1'),
            onTap: () {
              Navigator.pop(context);
              // Switch to Tab 1 content
            },
          ),
          ListTile(
            title: Text('Tab 2'),
            onTap: () {
              Navigator.pop(context);
              // Switch to Tab 2 content
            },
          ),
          ListTile(
            title: Text('ListView Page'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListViewPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Page'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
            onTap: () {
              // Handle item tap
            },
          );
        },
      ),
    );
  }
}
