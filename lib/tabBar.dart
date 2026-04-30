import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabbarDemo extends StatefulWidget {
  const TabbarDemo({super.key});

  @override
  State<TabbarDemo> createState() => _TabbarDemoState();
}

class _TabbarDemoState extends State<TabbarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar:AppBar(
          title: Text("Chats"),
          backgroundColor: CupertinoColors.systemGreen,
          foregroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  labelColor: Colors.white,
                    unselectedLabelColor:  Colors.black,
                    indicatorColor: Colors.green,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    isScrollable: true,
                    tabs: [
                      Tab(text: "All", icon: Icon(Icons.all_inbox),),
                      Tab(text: "Unread", icon: Icon(Icons.mark_as_unread),),
                      Tab(text: "Favorite", icon: Icon(Icons.favorite_border),),
                      Tab(text: "Groups", icon: Icon(Icons.group),),
                      Tab(text: "All", icon: Icon(Icons.all_inbox),),
                      Tab(text: "Unread", icon: Icon(Icons.mark_as_unread),),
                      Tab(text: "Favorite", icon: Icon(Icons.favorite_border),),
                      Tab(text: "Groups", icon: Icon(Icons.group),),
                    ]),
              ),
            ),
          ),
        ),
        body: TabBarView(
            children: [
              Center(child: Column(
                children: [
          Card(
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
        ),
                ],
              ),),
              Center(child: Card(
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
                      Text("Unread"),
                      SizedBox(height: 10,),
                      Icon(Icons.arrow_forward_ios,size: 20,)
                    ],
                  ),
                ),
              ),),
              Center(child: Card(
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
                      Text("Favorite"),
                      SizedBox(height: 10,),
                      Icon(Icons.arrow_forward_ios,size: 20,)
                    ],
                  ),
                ),
              ),),
              Center(child: Card(
                color: Colors.yellow,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/doctor.png"),
                  ),
                  title: Text("Group 1"),
                  subtitle: Text("Haris: Hello"),
                  trailing: Column(
                    children: [
                      Text("4/21/2026"),
                      SizedBox(height: 10,),
                      Icon(Icons.arrow_forward_ios,size: 20,)
                    ],
                  ),
                ),
              ),),
            ]),
      ),
    );
  }
}
