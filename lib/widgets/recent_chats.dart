import 'package:flutter/material.dart';
import 'package:tubonge/models/message.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          // color: Theme.of(context).accentColor,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: ListView.builder(
              itemCount: chats.length,
              itemBuilder: (BuildContext context, int index) {
                final Message chat = chats[index];
                return Container(
                  margin: EdgeInsets.only(top: 5.0, bottom: 20, right: 20.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                      color: chat.unread ? Color(0xffffefee) : Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20.0))),
                  child: Row(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage(chat.sender.imageUrl),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(chat.sender.name,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0)),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.44,
                                  child: Text(
                                    chat.text,
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 11.0,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ]),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            chat.time,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold),
                          ),
                          chat.unread
                              ? Container(
                                  width: 40,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      color: Theme.of(context).primaryColor),
                                  alignment: Alignment.center,
                                  child: Text('new',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold)))
                              : Text(''),
                        ],
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
