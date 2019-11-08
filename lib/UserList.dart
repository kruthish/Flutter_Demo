import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();

  initState() {
  requestForData();
  }

  void requestForData() async{
    String requestUrl = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(requestUrl);
    
  }
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Container(

      // https://jsonplaceholder.typicode.com/posts
      
    );
  }
}