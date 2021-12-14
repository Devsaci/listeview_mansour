// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  UsersScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: Row(
        children: [
          CircleAvatar(
            radius: 25,
            child: Text("1", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          ),

        ],
      ),
    );
  }

// 1. build Item
// 2. build list
// 3. add Item to List

}
