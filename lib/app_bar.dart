import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new_sharp),
        title: Text("Flutter Demo"),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.settings)
        ],
      ),
    );
  }
}
