import 'package:circle/models/user_model.dart';
import 'package:circle/screen/chat_screen.dart';
import 'package:flutter/material.dart';

class FavoiteContacts extends StatefulWidget {
  @override
  _FavoiteContactsState createState() => _FavoiteContactsState();
}

class _FavoiteContactsState extends State<FavoiteContacts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favourite Contacts',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.more_horiz),
                    iconSize: 30.0,
                    color: Colors.blueGrey,
                    onPressed: () {}),
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: mockUserFavorite.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatScreen(
                            user: mockUserFavorite[index],
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35.0,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            mockUserFavorite[index].name,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
