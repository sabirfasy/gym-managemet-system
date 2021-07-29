import 'package:flutter/material.dart';
import 'package:gym_manage/services/auth.dart';


final AuthService _auth = AuthService();


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        title: Text('My Gym'),
        actions: <Widget>[
          FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('Logout'),
              onPressed: () async{
                await _auth.signOut();
              },
          )
        ],
      ),
      
    );

  }
}
