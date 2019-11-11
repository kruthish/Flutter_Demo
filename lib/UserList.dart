// import 'package:flutter/gestures.dart';
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
    String requestUrl = 'https://reqres.in/api/users?page=2';
    // "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(requestUrl);
    if (response.body != null){
      setState(() {
        userList = (json.decode(response.body))["data"];
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
          backgroundColor: Colors.black,
        ),
        body: new ListView.builder(
          itemCount: userList.length,
          itemBuilder: (BuildContext context, int position){
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.blueGrey,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: 
                  <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage("${userList[position]["avatar"]}"),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Image(
                    //     image: NetworkImage("${userList[position]["avatar"]}"),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        // color: Colors.grey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Name: ${userList[position]["first_name"]} ${userList[position]["last_name"]}' ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Email: ${userList[position]["email"]}'),
                          )
                          ],
                        ),
                      ),
                    ),
                  ],
                  // List.generate(1, (int index){
                  //   return new ListTile(
                  //     title: Text("item  #$index"),
                  //     onTap: (){
                  //       print(index);
                  //     },
                  //   );
                  // })
                ),
              ),
            );
          },
        ),
      ),

      // https://jsonplaceholder.typicode.com/posts
      
    );
  }
}