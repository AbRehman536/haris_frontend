import 'package:flutter/material.dart';
import 'package:haris_frontend/passing_pameters/screen_2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(child:
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2(
            name : "Ali",
            email : "haris@gmail.com"
          )));
        }, child: Text("Go to Screen 2")),),
    );
  }
}
