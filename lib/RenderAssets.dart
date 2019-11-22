import 'package:flutter/material.dart';

class AssetRenderer extends StatefulWidget {
  @override
  _AssetRendererState createState() => _AssetRendererState();
}

class _AssetRendererState extends State<AssetRenderer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Asset Renderer"),
      ),
      body: Image.asset('assets/images/image1.jpg'),
    );
  }
}