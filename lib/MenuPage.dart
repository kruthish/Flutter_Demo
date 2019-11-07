import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'ImageDetails.dart';

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
           leading: Icon(Icons.info),
           title: Text('Info'),
           enabled: false,
           onTap: (){
             
           },
         ),
         ListTile(
           leading: Icon(Icons.dashboard),
           title: Text('Dashboard'),
           enabled: false,
           onTap: (){
             
           },
         ),
       ],
     ),
   );
  }
}