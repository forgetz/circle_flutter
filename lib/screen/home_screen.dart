import 'package:circle/widgets/category_selector.dart';
import 'package:circle/widgets/favorite_contacts.dart';
import 'package:circle/widgets/recent_message.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Circle'),
    Tab(text: 'Contact'),
    Tab(text: 'Message'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.menu),
                iconSize: 30.0,
                color: Colors.white,
                onPressed: () {},
              ),
              title: Text(
                'Chats',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              elevation: 0.0,
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  iconSize: 30.0,
                  color: Colors.white,
                  onPressed: () {},
                )
              ],
              bottom: TabBar(
                tabs: myTabs,
                indicatorColor: Colors.lightBlueAccent,
                labelStyle: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: TabBarView(
              children: [
                Column(
                  children: [
                    // CategorySelector(),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            FavoiteContacts(),
                            RecentMessage(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Text('data'),
                Text('data'),
              ],
            ),
          );
        },
      ),
    );
  }
}
