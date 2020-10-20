import 'package:circle/widgets/favorite_contacts.dart';
import 'package:circle/widgets/recent_message.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final myTabs = [
    Container(
      width: 300.0,
      child: Tab(text: 'Circle'),
    ),
    Container(
      width: 300.0,
      child: Tab(text: 'Contact'),
    ),
    Container(
      width: 300.0,
      child: Tab(text: 'Message'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            drawer: Drawer(
              child: ListView(
                children: [
                  UserAccountsDrawerHeader(
                    accountName: Text('name'),
                    accountEmail: Text('email'),
                  ),
                  ListTile(
                    leading: Icon(Icons.android),
                    title: Text('title'),
                  ),
                ],
              ),
            ),
            appBar: AppBar(
              title: Text(
                'Circle',
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
                labelColor: Colors.blue,
                labelStyle:
                    TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  color: Colors.white,
                ),
                // indicatorColor: Colors.lightBlueAccent,
                // labelStyle: TextStyle(
                //   fontSize: 18.0,
                //   fontWeight: FontWeight.bold,
                // ),
                // unselectedLabelStyle: TextStyle(
                //   fontSize: 18.0,
                //   fontWeight: FontWeight.bold,
                // ),
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
                            topRight: Radius.circular(0.0),
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
                Text('Contact'),
                Column(
                  children: [
                    // CategorySelector(),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            // FavoiteContacts(),
                            RecentMessage(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
