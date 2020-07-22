import 'package:flutter/material.dart';
import 'package:flutter_starter/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.blueGrey[500],
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
              onPressed: () {
                print("Home pressed!");
              },
              icon: Icon(Icons.person)),
          IconButton(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.exit_to_app)),
        ],
      ),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.grey,
      ),
    ));
  }
}
