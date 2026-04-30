import 'package:flutter/material.dart';
import 'package:haris_frontend/grid)view/staggered_grid.dart';
import 'package:haris_frontend/images.dart';
import 'package:haris_frontend/single_selection.dart';
import 'package:haris_frontend/text_fields.dart';

class BottombarDemo extends StatefulWidget {
  const BottombarDemo({super.key});

  @override
  State<BottombarDemo> createState() => _BottombarDemoState();
}

class _BottombarDemoState extends State<BottombarDemo> {
  List<Widget> screenList = [
    SingleSelection(),
    LoginScreen(),
    GridViewStaggered(),
    ImagesScreen()
  ];
  int selectedScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedScreen),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 30
        ),
        selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          currentIndex: selectedScreen,
          onTap: (value){
          setState(() {
            selectedScreen = value;
          });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat_sharp),label: "Chats"),
            BottomNavigationBarItem(icon: Icon(Icons.update),label: "Status"),
            BottomNavigationBarItem(icon: Icon(Icons.group),label: "Community"),
            BottomNavigationBarItem(icon: Icon(Icons.call_sharp),label: "Calls"),
          ]),
    );
  }
}
