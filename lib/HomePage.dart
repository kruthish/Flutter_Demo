import 'package:flutter/material.dart';
import 'ImageDetails.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            GestureDetector(
              child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Hero(
               transitionOnUserGestures: true,
               tag: 'image', 
               child: Image(
              image: NetworkImage('https://www.gstatic.com/webp/gallery/1.jpg'),
              ),
             )
           ),
              onTap: (){
                print('Image tapped');
                 Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ImageDetails()),
                        );
              },
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Image(
              image: NetworkImage('https://www.gstatic.com/webp/gallery/1.jpg'),
          ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Image(
              image: NetworkImage('https://www.gstatic.com/webp/gallery/1.jpg'),
          ),
           )
          ],
        ),
      ),
    );
  }
}