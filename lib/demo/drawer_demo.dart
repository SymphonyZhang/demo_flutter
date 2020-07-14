import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage(
                      'https://00.minipic.eastday.com/20170818/20170818115256_d41d8cd98f00b204e9800998ecf8427e_1.jpeg',
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.hardLight,
                    ))),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.end),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.end),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.end),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
