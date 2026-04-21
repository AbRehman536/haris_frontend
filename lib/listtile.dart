import 'package:flutter/material.dart';

class ListtileDemo extends StatefulWidget {
  const ListtileDemo({super.key});

  @override
  State<ListtileDemo> createState() => _ListtileDemoState();
}

class _ListtileDemoState extends State<ListtileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.yellow,
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/doctor.png"),
              ),
              title: Text("Haris"),
              subtitle: Text("Hello, How are you?"),
              trailing: Column(
                children: [
                  Text("4/21/2026"),
                  SizedBox(height: 10,),
                  Icon(Icons.arrow_forward_ios,size: 20,)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
