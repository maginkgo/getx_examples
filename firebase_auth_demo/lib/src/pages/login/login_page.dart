import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LoginPage')),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_circle),
        onPressed: () {},
      ),
    );
  }
}
