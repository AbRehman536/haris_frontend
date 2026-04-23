import 'package:flutter/material.dart';

class GridviewCount extends StatefulWidget {
  const GridviewCount({super.key});

  @override
  State<GridviewCount> createState() => _GridviewCountState();
}

class _GridviewCountState extends State<GridviewCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
          crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            color: Colors.red,
            child: Text("Red"),
          ),
          Container(
            color: Colors.green,
            child: Text("Green"),
          ),
          Container(
            color: Colors.yellow,
            child: Text("Yellow"),
          ),
          Container(
            color: Colors.blue,
            child: Text("Blue"),
          ),
          Container(
            color: Colors.orange,
            child: Text("Orange"),
          ),
        ],
      ) ,
    );
  }
}
