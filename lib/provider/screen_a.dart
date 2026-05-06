import 'package:flutter/material.dart';
import 'package:haris_frontend/provider/screen_b.dart';
import 'package:haris_frontend/provider/user_provider.dart';
import 'package:provider/provider.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({super.key});

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          userProvider.setName("Haris");
          userProvider.setEmail("haris@gmail.com");
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenB()));
        }, child: Text("Go to Screen B")),
      ),
    );
  }
}
