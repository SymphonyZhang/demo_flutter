import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            title: Text('DEMO'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Navigration',
                onPressed: () => debugPrint('Search button is pressed.'),
              ),
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            )),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
            Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  'yx',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail: Text('yx@symphony.net'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://c-ssl.duitang.com/uploads/item/201704/23/20170423130053_2nWPB.thumb.1000_0.jpeg'),
                ),
              ),
              ListTile(
                title: Text('Message', textAlign: TextAlign.end),
                trailing:
                    Icon(Icons.message, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Favorite', textAlign: TextAlign.end),
                trailing:
                    Icon(Icons.favorite, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Settings', textAlign: TextAlign.end),
                trailing:
                    Icon(Icons.settings, color: Colors.black12, size: 22.0),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
