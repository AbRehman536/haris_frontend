import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.redAccent,size: 40.5,),
        title: Text("Row Column Demo",style: TextStyle(
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
      body: Container(
        color: Colors.yellow,
        width: double.infinity,
        child: Column(
          children: [
            Text("Lorem Ipsum",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900
            ),),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets conta"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.favorite_border),
                Column(
                  children: [
                    Icon(Icons.comment),
                    Icon(Icons.lock_clock),
                  ],
                ),
                Icon(Icons.share),
                Icon(Icons.bookmark)
              ],
            )
          ],
        ),
      ),
    );
  }
}
