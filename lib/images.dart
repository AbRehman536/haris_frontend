import 'package:flutter/material.dart';

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
        
              ),
        
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network("https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
                width: 200,height: 200,fit: BoxFit.fill,),
              ),
            ),
            Image.asset("assets/images/doctor.png",width: 300,height: 200,),
            Container(
              color: Colors.yellow,
              child: ClipOval(
                 child: Image.asset("assets/images/doctor.png",width: 200,height: 100,fit: BoxFit.cover
                   ,)),
            ),
            CircleAvatar(
                radius: 30,
                child: Image.asset("assets/images/doctor.png",width: 300,height: 200,))
          ],
        ),
      ),
    );
  }
}
