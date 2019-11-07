import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'MenuPage.dart';
// import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  final String title ;
  LoginPage({this.title});
  @override
  _LoginPageState createState() => _LoginPageState();
  }

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  var textEditController = TextEditingController();
  String userName;
  String password;

  void saveData(String userName, String password) async{
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    sharedPref.setString('userName', userName);
    sharedPref.setString('password', password);
    String un = sharedPref.getString('userName');
    String pass = sharedPref.getString('password');
    print(un);
    print(pass);
  }

  Future<bool> isCredentialsAvailable() async{
    SharedPreferences sharedPref = await SharedPreferences.getInstance();
    String un = sharedPref.getString('userName');
    String pass = sharedPref.getString('password');
    if (un.isNotEmpty && pass.isNotEmpty) {
      return true;
    } else {
      return false;
    } 
  }

  @override
  Widget build(BuildContext context) {
    var form = Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Enter User Name"),
                  controller: textEditController,
                  validator: (value){
                    if (value.isEmpty) {
                      return 'please enter UserName';
                    }
                    return null;
                  },
                  onSaved: (value){
                    if (value.isNotEmpty) {
                      setState(() {
                        userName = value;
                      });
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Enter Password"),
                  obscureText: true,
                  validator: (value){
                    if (value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                  onSaved: (value){
                    if (value.isNotEmpty) {
                      password = value;
                    }
                  },
                ),
              ),
              new RaisedButton(
                child: Text("Submit"),
                onPressed: (){
                  final form = _formkey.currentState;
                  form.validate();
                  form.save();
                  if (this.password.isNotEmpty && this.userName.isNotEmpty) {
                    this.saveData(this.userName, this.password);
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Menu()),
                        );
                    }
                 print('Submit button pressed.');
                },
              )
              
            ],
          ),
        );
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: form,
      ),
    );
  }
}