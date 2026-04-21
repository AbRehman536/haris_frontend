import 'package:flutter/material.dart';

class SingleSelection extends StatefulWidget {
  const SingleSelection({super.key});

  @override
  State<SingleSelection> createState() => _SingleSelectionState();
}

class _SingleSelectionState extends State<SingleSelection> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Selection"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.yellow,
            child: ListTile(
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });
              },
              selected: selectedIndex == index,
              selectedTileColor: Colors.green,
              selectedColor: Colors.white,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/doctor.png"),
              ),
              title: Text("Haris,$selectedIndex"),
              subtitle: Text(selectedIndex == index ? "Read" : "Unread"),
              trailing: Column(
                children: [
                  Text("4/21/2026,$index"),
                  SizedBox(height: 10,),
                  Icon(selectedIndex == index ?Icons.keyboard_arrow_down_rounded: Icons.arrow_forward_ios_sharp,size: 20,)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
