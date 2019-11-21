import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tubonge/models/message.dart';
import 'package:tubonge/widgets/category_selector.dart';
import 'package:tubonge/widgets/favorite_contacts.dart';
import 'package:tubonge/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Text('Chats',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
          leading: IconButton(
            icon: Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            CategorySelector(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    )),
                child: Column(
                  children: <Widget>[
                    FavoriteContacts(),
                    RecentChats()
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
