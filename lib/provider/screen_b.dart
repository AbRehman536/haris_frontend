import 'package:flutter/material.dart';
import 'package:haris_frontend/provider/user_provider.dart';
import 'package:provider/provider.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          Text(userProvider.getName(), style: TextStyle(fontSize: 30),),
          Text(userProvider.getEmail(), style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}
