import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'ImageDetails.dart';
import 'UserList.dart';
import 'RenderAssets.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Menu"),
     ),
     body: ListView(
       children: <Widget>[
         ListTile(
           leading: Icon(Icons.home),
           title: Text('Home'),
           enabled: true,
           onTap: (){
             Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
           },
         ),
         ListTile(
           leading: Icon(Icons.image),
           title: Text('Images'),
           enabled: true,
           onTap: (){
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ImageDetails()),
              );
           },
         ),
         ListTile(
           leading: Icon(Icons.list),
           title: Text('UserList'),
           enabled: true,
           onTap: (){
             Navigator.push(context, 
             MaterialPageRoute(builder: (context) => UserList())
             );
           },
         ),
         ListTile(
           leading: Icon(Icons.dashboard),
           title: Text('Dashboard'),
           enabled: true,
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => AssetRenderer())
             );
           },
         ),
       ],
     ),
   );
  }
}