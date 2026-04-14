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
        leading: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.redAccent,size: 40.5,),
        title: Text("Flutter Demo",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: Colors.orange,
          fontFamily: "Raleway",
          height: 0
        ),),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications,color: Colors.green,size: 30,),
          Icon(Icons.settings,color: Colors.yellow,size: 35,)
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        label: Text("Add"),
        onPressed: (){},
        icon: Icon(Icons.add),
        ),
    );
  }
}
