import 'package:flutter/material.dart';

class GridViewBuilderDemo extends StatefulWidget {
  const GridViewBuilderDemo({super.key});

  @override
  State<GridViewBuilderDemo> createState() => _GridViewBuilderDemoState();
}

class _GridViewBuilderDemoState extends State<GridViewBuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: 100,
          ),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.orangeAccent,
              child: Center(
                child: Text("Hello"),
              ),
            );
        },
          )
    );
  }
}
