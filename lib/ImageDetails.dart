import 'package:flutter/material.dart';

class ImageDetails extends StatefulWidget {
  @override
  ImageDetailsState createState() => ImageDetailsState();
}

class ImageDetailsState extends State<ImageDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Details"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.black,
            child:Hero(
              transitionOnUserGestures: true,
              tag: 'image',
              child: Image(
                      image: NetworkImage('https://www.gstatic.com/webp/gallery/1.jpg'),
                    ),
                  )
                ),
              ),
            ),
          );
        }
      }