import 'package:flutter/material.dart';
import 'ImageDetails.dart';

class SideMenu extends StatefulWidget {
  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Side Menu'),
      ),
      body:   Center(
        child: Text('Side Menu page'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('Menu Items'),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: NetworkImage("https://jsonplaceholder.typicode.com/posts"),
                  color: Colors.blue,
                ),
              ),
               ListTile(
              title: Text('User List'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ImageDetails()),
              );
                
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
              
            ],
          ),
        ),
    );
  }
}