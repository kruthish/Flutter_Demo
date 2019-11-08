import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();  
  
}

class _UserListState extends State<UserList> {
  List userList = [];
  void requestForData() async{
    String requestUrl = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(requestUrl);
    if (response.body != null){
      setState(() {
        userList = json.decode(response.body);  
      });
    }
  }

  @override
  void initState() {
    super.initState();
    requestForData();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Users list"),
        ),
        body: ListView.builder(
          itemCount: userList.length,
          itemBuilder: (BuildContext context, int position){
            return Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('${userList[position]["title"]}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('${userList[position]["body"]}'),
                  ),
                ],
              ),
            );
          },
        ),
      ),

      // https://jsonplaceholder.typicode.com/posts
      
    );
  }
}