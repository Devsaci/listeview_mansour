// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Image /Chat / Icon Camera , edit
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/46720185?s=400&u=1448d38406436f4c8ababbe8811bd691e9488489&v=4"),
            ),
            SizedBox(width: 15.0),
            Text(
              "Chat",
              style: TextStyle(fontSize: 20, color: Colors.black87),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.camera_alt,
                color: Colors.yellow,
                size: 25.0,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.edit,
                color: Colors.yellow,
                size: 25.0,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon Serch , Txt Scherch
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey[300],
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 50.0,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  // 1. build Item
  // 2. build list
  // 3. add Item to List

  // arrow function
  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/46720185?s=400&u=1448d38406436f4c8ababbe8811bd691e9488489&v=4"),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 3,
                  end: 3,
                ),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.redAccent,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SACI Zakaria",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Message Message Message Message",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3.0, vertical: 3.0),
                          child: Container(
                            height: 3.0,
                            width: 3.0,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3.0, vertical: 3.0),
                          child: Container(
                            height: 3.0,
                            width: 3.0,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text("12 : 00 PM"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ); //Item Horizontal
  Widget buildStoryItem() => Container(
        width: 60,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/46720185?s=400&u=1448d38406436f4c8ababbe8811bd691e9488489&v=4"),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 3,
                    end: 3,
                  ),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.redAccent,
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.0),
            Text(
              "SACI Zakaria SACI Zakaria",
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ); //Item Vertical

}
